require 'sunlight/influence'

class Sunlight::Influence::Organization < OpenStruct
  extend CallConstructor



  def self.org_id_lookup(options)
    entity = Sunlight::Influence::EntitySearch.find_organization(options)
    entity[0]["id"]
  end

  def self.top_organizations_by_contributions_given(options)
    if options[:cycle] != nil
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/orgs/top_#{options[:limit]}"
    options = {category: options[:category], parameters: options[:parameters]}
    bar = uri_builder(options)
    sunlight_call(bar)
  end

  def self.top_recipients(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/recipients"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.pac_recipients(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/recipient_pacs"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.party_breakdown(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/recipients/party_breakdown"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.state_federal_breakdown(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/recipients/level_breakdown"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.lobbying_registrants(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/registrants"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.lobbying_issues(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/issues"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.bills(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/bills"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.lobbyists(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/lobbyists"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.registrant_clients(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/registrants/clients"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.registrant_issues(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/registrant/issues"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.registrant_bills(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/registrant/bills"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.registrant_lobbyists(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/registrant/lobbyists"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end


  def self.mentions_in_regulations(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/regulations_text"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.regulatory_submissions(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/regulations_submitter"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.faca_memberships(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    if !options.empty?
      options[:parameters] = string_constructor(options)
    end
    options[:category] = "aggregates/org/#{entity_id}/faca"
    args = {category: options[:category], parameters: options[:parameters]}
    call = uri_builder(args)
    sunlight_call(call)
  end

  def self.fec_summary(options)
    entity_id = self.org_id_lookup(search: options[:name])
    options.delete(:name)
    options[:category] = "aggregates/org/#{entity_id}/fec_summary"
    call = uri_builder(options)
    sunlight_call(call)
  end

end
