require 'iframely'
require 'json'

module Iframely
  class Requester
    CACHE_KEY_PREFIX = 'iframely:'
    attr_accessor :iframely_url, :oembed_url, :api_key, :cache, :cache_options

    def initialize api_key: nil, cache: nil, cache_options: {}, iframely_url: IFRAMELY_API_URL, oembed_url: OEMBED_API_URL
      @iframely_url  = iframely_url or raise "No iframely_url specified"
      @oembed_url    = oembed_url or raise "No oembed_url specified"
      @api_key       = api_key      or raise "No api_key specified"
      @cache         = cache
      if cache
        raise "cache must be a ActiveSupport::Cache::Store" unless defined?(ActiveSupport::Cache::Store) && cache.is_a?(ActiveSupport::Cache::Store)
      end
      @cache_options = cache_options
    end

    def get_iframely_json embed_url
      fetch cache_key(:iframely, embed_url) do
        response = iframely_connection.get do |req|
          req.params['api_key'] = api_key
          req.params['url']     = embed_url
        end

        JSON.parse response.body
      end
    end

    def get_iframely_model embed_url
      json = get_iframely_json embed_url
      if json.has_key? 'error'
        raise Iframely::Error, json['error']
      else
        Iframely::Model.new  json
      end
    end

    def get_oembed_json embed_url
      fetch cache_key(:oembed, embed_url) do
        response = oembed_connection.get do |req|
          req.params['api_key'] = api_key
          req.params['url']     = embed_url
        end

        JSON.parse response.body
      end
    end

    private

    def cache_key type, url
      CACHE_KEY_PREFIX + type.to_s + ':' + url.to_s
    end

    def fetch cache_key, &block
      if cache
        cache.fetch cache_key, &block
      else
        block.call
      end
    end

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

