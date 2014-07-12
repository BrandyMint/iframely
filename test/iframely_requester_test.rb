require './test/test_helper'

class IframelyRequesterTers < Minitest::Test
  API_KEY = 'some_key'
  EMBED_URL = 'some_url'
  BODY = "{\n    \"id\": \"g41eH1\",\n    \"url\": \"http://www.youtube.com/embed/LG3oB2n0MU8\",\n    \"meta\": {\n        \"title\": \"Empire vs MVP.P, SLTV Lan Finals Day 1 Game 1\",\n        \"date\": \"2014-04-17T16:37:31.000Z\",\n        \"author\": \"dotasltv\",\n        \"category\": \"Gaming\",\n        \"description\": \"\xD0\x94\xD0\xB5\xD0\xB2\xD1\x8F\xD1\x82\xD1\x8B\xD0\xB9 \xD1\x81\xD0\xB5\xD0\xB7\xD0\xBE\xD0\xBD STARLADDER.TV \xD0\xB2 \xD1\x80\xD0\xB0\xD0\xB7\xD0\xB3\xD0\xB0\xD1\x80\xD0\xB5! \xD0\x9A\xD1\x83\xD0\xBF\xD0\xB8 \xD0\xB1\xD0\xB8\xD0\xBB\xD0\xB5\xD1\x82, \xD0\xBF\xD0\xBE\xD0\xB4\xD0\xB4\xD0\xB5\xD1\x80\xD0\xB6\xD0\xB8 \xD0\xBB\xD1\x8E\xD0\xB1\xD0\xB8\xD0\xBC\xD1\x8B\xD0\xB5 \xD0\xBA\xD0\xBE\xD0\xBC\xD0\xB0\xD0\xBD\xD0\xB4\xD1\x8B \xD0\xB8 \xD0\xBF\xD0\xBE\xD0\xBB\xD1\x83\xD1\x87\xD0\xB8 \xD1\x8D\xD0\xBA\xD1\x81\xD0\xBA\xD0\xBB\xD1\x8E\xD0\xB7\xD0\xB8\xD0\xB2\xD0\xBD\xD1\x8B\xD0\xB9 \xD1\x81\xD1\x8D\xD1\x82 \xD0\xBD\xD0\xB0 \xD0\x9B\xD0\xB8\xD1\x87\xD0\xB0, \xD0\xB0 \xD1\x82\xD0\xB0\xD0\xBA\xD0\xB6\xD0\xB5 \xD1\x83\xD0\xBD\xD0\xB8\xD0\xBA\xD0\xB0\xD0\xBB\xD1\x8C\xD0\xBD\xD1\x8B\xD0\xB9 Loading Screen.\\n\xD0\x9C\xD0\xB0\xD0\xB3\xD0\xB0\xD0\xB7\xD0\xB8\xD0\xBD \xD0\xB7\xD0\xB0 \xD1\x83\xD0\xB3\xD0\xBB\xD0\xBE\xD0\xBC \xE2\x86\x92 http://www.dota2.com/store/itemdetails/20417\\n\xE2\x80\x94\\n\xD0\x91\xD1\x83\xD0\xB4\xD1\x8C\xD1\x82\xD0\xB5 \xD0\xB2 \xD0\xBA\xD1\x83\xD1\x80\xD1\x81\xD0\xB5 \xD0\xB2\xD1\x81\xD0\xB5\xD1\x85 \xD0\xBF\xD0\xBE\xD1\x81\xD0\xBB\xD0\xB5\xD0\xB4\xD0\xBD\xD0\xB8\xD1\x85 \xD1\x81\xD0\xBE\xD0\xB1\xD1\x8B\xD1\x82\xD0\xB8\xD0\xB9 \xD0\xBD\xD0\xB0\xD1\x88\xD0\xB5\xD0\xB9 \xD0\xBB\xD0\xB8\xD0\xB3\xD0\xB8!\\nhttp://dota2.starladder.tv \\nhttp://vk.com/dotastarladder\\nhttp://facebook.com/dotasltv\\nhttp://twitter.com/dotasltv\\nhttp://twitch.tv/starladder1/new\",\n        \"duration\": \"4642\",\n        \"likes\": \"303\",\n        \"views\": \"33476\",\n        \"site\": \"YouTube\"\n    },\n    \"links\": {\n        \"player\": [\n            {\n                \"href\": \"https://www.youtube.com/embed/LG3oB2n0MU8?wmode=transparent&rel=0&autohide=1&showinfo=0&enablejsapi=1\",\n                \"rel\": [\n                    \"player\",\n                    \"html5\"\n                ],\n                \"type\": \"text/html\",\n                \"media\": {\n                    \"aspect-ratio\": 1.778\n                }\n            }\n        ],\n        \"thumbnail\": [\n            {\n                \"href\": \"https://i1.ytimg.com/vi/LG3oB2n0MU8/mqdefault.jpg\",\n                \"rel\": [\n                    \"thumbnail\"\n                ],\n                \"type\": \"image/jpeg\",\n                \"media\": {\n                    \"width\": 320,\n                    \"height\": 180\n                }\n            },\n            {\n                \"href\": \"https://i1.ytimg.com/vi/LG3oB2n0MU8/maxresdefault.jpg\",\n                \"rel\": [\n                    \"thumbnail\"\n                ],\n                \"type\": \"image/jpeg\",\n                \"media\": {\n                    \"width\": 1280,\n                    \"height\": 720\n                }\n            }\n        ],\n        \"icon\": [\n            {\n                \"href\": \"https://s.ytimg.com/yts/img/favicon_32-vflWoMFGx.png\",\n                \"type\": \"image/png\",\n                \"rel\": [\n                    \"icon\"\n                ],\n                \"media\": {\n                    \"width\": 32,\n                    \"height\": 32\n                }\n            }\n        ]\n    },\n    \"html\": \"<div style=\\\"left: 0px; width: 100%; height: 0px; position: relative; padding-bottom: 56.243%;\\\"><iframe src=\\\"//iframe.ly/g41eH1\\\" frameborder=\\\"0\\\" allowfullscreen=\\\"true\\\" webkitallowfullscreen=\\\"true\\\" mozallowfullscreen=\\\"true\\\" style=\\\"top: 0px; left: 0px; width: 100%; height: 100%; position: absolute;\\\"></iframe></div>\"\n}"

  def setup
    @iframely = Iframely::Requester.new api_key: API_KEY
  end

  def test_request_iframely_json
    stub_request(:get, Iframely::IFRAMELY_API_URL + "?api_key=some_key&url=some_url").
          to_return(:status => 200, :body => BODY)

    @iframely.get_iframely_json EMBED_URL
  end

  def test_request_iframely_model
    stub_request(:get, Iframely::IFRAMELY_API_URL + "?api_key=some_key&url=some_url").
          to_return(:status => 200, :body => BODY)

    @iframely.get_iframely_model EMBED_URL
  end

  def test_request_oembed_json
    stub_request(:get, Iframely::OEMBED_API_URL + "?api_key=some_key&url=some_url").
          to_return(:status => 200, :body => "{}")

    @iframely.get_oembed_json EMBED_URL
  end

end
