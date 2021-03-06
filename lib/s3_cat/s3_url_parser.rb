# frozen_string_literal: true

module S3Cat
  class S3UrlParser
    S3_URL_PATTERN = %r{^s3://(?<bucket>\S+?)/(?<key>\S+)?$}.freeze

    def parse_url(s3_url)
      matched_data = S3_URL_PATTERN.match(s3_url)

      [matched_data['bucket'], matched_data['key']]
    end
  end
end
