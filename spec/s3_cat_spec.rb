# frozen_string_literal: true

RSpec.describe S3Cat do
  it 'has a version number' do
    expect(S3Cat::VERSION).not_to be nil
  end
end
