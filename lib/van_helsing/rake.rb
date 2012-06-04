# This file is invoked from Rake.

$:.unshift File.expand_path('../../', __FILE__)
require File.expand_path('../../van_helsing', __FILE__)

extend VanHelsing::Helpers
extend VanHelsing::DeployHelpers

# Inherit settings from Rake. Hehe.
set :verbose_mode, (Rake.verbose == true)
set :simulate_mode, (!! ENV['simulate'])

require 'van_helsing/default'