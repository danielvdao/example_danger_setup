# frozen_string_literal: true

require 'rubygems'
require 'test/unit'
require 'vcr'
require 'pry'

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


class VCRTest < Test::Unit::TestCase
  def test_example_dot_com
    create_vcr_casette('vcr_test', 'http://example.com/')
    VCR.use_cassette('vcr_test') do
      response = Net::HTTP.get_response(URI.parse('http://example.com/'))
      assert_match(/This domain is for use in illustrative examples in documents./, response.body)
    end
  end
end


# Use case: when someone is trying to create a new request
# we can raise an error that the casette doesn't exist
# but this doesn't really stop ppl from doing expect(Chime::Atlas).to receive(....)


# First, try to set up VCR to be used and recorded
# 
#
#