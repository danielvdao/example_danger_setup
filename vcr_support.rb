# frozen_string_literal: true

require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'fixtures/vcr_casettes'
  config.hook_into(:webmock)
  config.default_cassette_options = { record: :none }
end

def create_vcr_casette(fixture_name, request_uri)
  VCR.use_cassette(fixture_name, record: :new_episodes) do
    Net::HTTP.get_response(URI.parse(request_uri))
  end
end
