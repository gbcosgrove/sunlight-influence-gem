require 'sunlight/influence'
require_relative 'call_constructor_module.rb'

class Sunlight::Influence::ItemizedSearch < OpenStruct


  def self.campaign_contributions(options)
    check_options_hash(options)
    options[:category] = "contributions"
    call_api(options)
  end

  def self.bundled_campaign_contributions(options)
    check_options_hash(options)
    options[:category] = "contributions/bundled"
    call_api(options)
  end

  def self.contractor_misconduct(options)
    check_options_hash(options)
    options[:category] = "misconduct"
    call_api(options)
  end

  def self.earmarks(options)
    check_options_hash(options)
    options[:category] = "earmarks"
    call_api(options)
  end

  def self.epa_echo(options)
    check_options_hash(options)
    options[:category] = "epa"
    call_api(options)
  end

  def self.faca_memberships(options)
    check_options_hash(options)
    options[:category] = "faca"
    call_api(options)
  end

  def self.federal_contracts(options)
    check_options_hash(options)
    options[:category] = "contracts"
    call_api(options)
  end

  def self.federal_grants(options)
    check_options_hash(options)
    options[:category] = "grants"
    call_api(options)
  end

  def self.lobbying_registrations(options)
    check_options_hash(options)
    options[:category] = "lobbying"
    call_api(options)
  end

end
