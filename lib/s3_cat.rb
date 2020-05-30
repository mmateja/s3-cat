# frozen_string_literal: true

require 'aws-sdk-s3'

require 's3_cat/version'

require 's3_cat/s3_url_parser'
require 's3_cat/file_lister'
require 's3_cat/file_reader'

module S3Cat
  class Error < StandardError; end

  def self.s3_client
    @s3_client ||= Aws::S3::Client.new
  end
end
