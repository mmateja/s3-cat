# frozen_string_literal: true

module S3Cat
  class FileLister
    def initialize(s3_client: S3Cat.s3_client)
      @s3_client = s3_client
    end

    def list_files(bucket, prefix)
      Enumerator.new do |y|
        continuation_token = nil

        loop do
          response = s3_client.list_objects_v2(bucket: bucket, prefix: prefix, continuation_token: continuation_token)

          response.contents.map(&:key).each { |key| y << key }

          break unless response.is_truncated

          continuation_token = response.continuation_token
        end
      end
    end

    private

    attr_reader :s3_client
  end
end
