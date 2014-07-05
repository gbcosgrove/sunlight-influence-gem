require 'sunlight/influence'
require_relative 'call_constructor_module.rb'

class Sunlight::Influence::EntitySearch < OpenStruct


  def self.id_lookup(args)
    entity = self.search(args)
    entity[0]["id"]
  end

  def self.search(args)
    parameters = string_constructor(args)
    foo = { category: "entities", parameters: "#{parameters}" }
    bar = uri_builder(foo)
    sunlight_call(bar)
  end

  def self.find_politician(args)
    args[:type] = "politician"
    self.search(args)
  end

  def self.find_individual(args)
    args[:type] = "individual"
    self.search(args)
  end

  def self.find_organization(args)
    args[:type] = "organization"
    self.search(args)
  end

  def self.find_industry(args)
    args[:type] = "industry"
    self.search(args)
  end

  def self.retrieve_overview(args)
    entity_id = self.id_lookup(args)
    foo = { category: "entities/", entity_id: "#{entity_id}" }
    bar = uri_builder(foo)
    sunlight_call(bar)
  end


end
