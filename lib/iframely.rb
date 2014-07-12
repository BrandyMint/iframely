require "iframely/version"

module Iframely
  IFRAMELY_API_URL = 'http://iframe.ly/api/iframely'
  OEMBED_API_URL   = 'http://iframe.ly/api/oembed'
end

require 'iframely/requester'
require 'iframely/model'
require 'iframely/error'
