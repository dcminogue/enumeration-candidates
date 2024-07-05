require 'bundler/setup'
require 'active_support'
require 'active_support/all'

require 'pp'
require './candidates'
require './filters'


pp ordered_by_qualifications(qualified_candidates(@candidates))