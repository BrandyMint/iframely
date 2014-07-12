require 'iframely'
require 'json'

module Iframely
  class Requester
    def initialize api_key: nil, iframely_url: IFRAMELY_API_URL, oembed_url: OEMBED_API_URL
      @iframely_url = iframely_url or raise "No iframely_url specified"
      @oembed_url   = oembed_url or raise "No oembed_url specified"
      @api_key      = api_key      or raise "No api_key specified"
    end

    def get_json embed_url
      response = iframely_connection.get do |req|
        req.params['api_key'] = api_key
        req.params['url']     = embed_url
      end

      return JSON.parse response.body
    end

    def get_iframely embed_url
      json = get_json embed_url
      if json.has_key? 'error'
        raise Iframely::Error, json['error']
      else
        Iframely::Model.new  json
      end
    end

    def get_oembed embed_url
      response = oembed_connection.get do |req|
        req.params['api_key'] = api_key
        req.params['url']     = embed_url
      end

      return JSON.parse response.body
    end

    private

    attr_reader :iframely_url, :oembed_url, :api_key

    def oembed_connection
      @oembed_connection ||= Faraday.new(:url => oembed_url) do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        #faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end

    def iframely_connection
      @iframely_connection ||= Faraday.new(:url => iframely_url) do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        #faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end

  end
end

