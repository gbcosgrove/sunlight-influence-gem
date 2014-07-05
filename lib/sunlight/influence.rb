require "sunlight/influence/version"
require "net/http"
require "json"
require "ostruct"
require_relative 'influence/call_constructor_module.rb'

module Sunlight
  module Influence


    BASE_URI = "http://transparencydata.com/api/1.0"

    def self.api_key
      @api_key = 'b34a371adbb94d988029fec07141ed1d'
    end

    # def self.api_key=(api_key)
    #   @api_key = api_key
    # end
  end
end
