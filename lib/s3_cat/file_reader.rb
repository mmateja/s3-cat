# frozen_string_literal: true

module S3Cat
  class FileReader
    def initialize(s3_client: S3Cat.s3_client)
      @s3_client = s3_client
    end

    def read_files(bucket, files, output_stream)
      files.each do |file|
        s3_client.get_object(bucket: bucket, key: file) do |chunk|
          output_stream.write(chunk)
        end
      end
    end

    private

    attr_reader :s3_client
  end
end
