require "sunlight/influence/version"
require "net/http"
require "json"
require "ostruct"

module Sunlight
  module Influence


    BASE_URI = "http://transparencydata.com/api/1.0"

    def self.api_key
      @api_key = api_key
    end

    def self.api_key=(api_key)
      @api_key = api_key
    end

    def self.search_format(foo)
      if foo.match(" ")
        foo.gsub!(' ', '%20')
      else
        foo
      end
    end

    def self.check_options_hash(options)
      options.delete(:name)
      if !options.empty?
        options[:parameters] = string_constructor(options)
      end
    end

    def self.call_api(options)
      options = {category: options[:category], parameters: options[:parameters]}
      call = uri_builder(options)
      sunlight_call(call)
    end

    def self.string_constructor(args)
      collection = []
      args.each do |k, v|
        val = search_format(v)
        collection << "#{k}=#{val}&"
      end
      collection.join
    end

    def self.uri_builder(args)
      api_key = Sunlight::Influence.api_key
      URI("#{Sunlight::Influence::BASE_URI}/#{args[:category]}#{args[:entity_id]}.json?#{args[:parameters]}apikey=#{api_key}")
    end

    def self.sunlight_call(api_call)
      JSON.load(Net::HTTP.get(api_call))
    end
  end
end
