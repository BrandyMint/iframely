require './test/test_helper'

class IframelyRequesterTers < Minitest::Test
  API_KEY = 'some_key'
  EMBED_URL = 'some_url'

  def setup
    @iframely = Iframely::Requester.new api_key: API_KEY
  end

  def test_request_json
    stub_request(:get, Iframely::IFRAMELY_API_URL + "?api_key=some_key&url=some_url").
          to_return(:status => 200, :body => "{}")

    @iframely.get_iframely EMBED_URL
  end

  def test_request_oembed
    stub_request(:get, Iframely::OEMBED_API_URL + "?api_key=some_key&url=some_url").
          to_return(:status => 200, :body => "{}")

    @iframely.get_oembed EMBED_URL
  end

end
