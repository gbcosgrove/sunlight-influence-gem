require 'sunlight/influence'
require_relative 'call_constructor_module.rb'

class Sunlight::Influence::Industry < OpenStruct
  extend CallConstructor

  def self.industry_id_lookup(args)
    query = Sunlight::Influence::EntitySearch
    entity = query.find_industry(args)
    entity[0]["id"]
  end

  ## requires a limit
  def self.top_industries(options)
    if options[:cycle] != nil
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/industries/top_#{options[:limit]}"
    options = {category: options[:category], parameters: options[:parameters]}
    bar = uri_builder(options)
    sunlight_call(bar)
  end

  def self.top_organizations(options)
    entity_id = self.industry_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/industry/#{entity_id}/orgs"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end
end
