require 'sunlight/influence'
require_relative 'call_constructor_module.rb'

class Sunlight::Influence::Politician < OpenStruct
  extend CallConstructor


  def self.pol_id_lookup(options)
    entity = Sunlight::Influence::EntitySearch.find_politician(options)
    entity[0]["id"]
  end

  def self.top_politicians_by_contributions_received(options)
    options[:category] = "aggregates/pols/top_#{options[:limit]}"
    call_api(options)
  end

  #entity_id

  def self.top_contributors(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    check_options_hash(options)
    options[:category] = "aggregates/pol/#{entity_id}/contributors"
    call_api(options)
  end

  #entity_id

  def self.top_industries(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    check_options_hash(options)
    options[:category] = "aggregates/pol/#{entity_id}/contributors/industries"
    call_api(options)
  end

  #entity_id

  def self.unknown_industries(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    check_options_hash(options)
    options[:category] = "aggregates/pol/#{entity_id}/contributors/industries_unknown"
    call_api(options)
  end

  #entity_id

  def self.top_sectors(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    check_options_hash(options)
    options[:category] = "aggregates/pol/#{entity_id}/contributors/sectors"
    call_api(options)

  end

  #entity_id

  def self.local_breakdowns(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    check_options_hash(options)
    options[:category] = "aggregates/pol/#{entity_id}/contributors/local_breakdown"
    call_api(options)
  end

  #entity_id

  def self.contributor_type_breakdown(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    check_options_hash(options)
    options[:category] = "aggregates/pol/#{entity_id}/contributors/type_breakdown"
    call_api(options)
  end

  #entity_id

  def self.fec_summary(options)
    entity = Sunlight::Influence::EntitySearch.search(search: options[:name])
    entity_id = entity.first["id"]
    options.delete(:name)
    options[:category] = "aggregates/pol/#{entity_id}/fec_summary"
    call_api(options)
  end

  #entity_id

  def self.fec_independent_exependitures(options)
    entity_id = self.pol_id_lookup(search: options[:name])
    options.delete(:name)
    options[:category] = "aggregates/pol/#{entity_id}/fec_indexp"
    call_api(options)
  end

end
