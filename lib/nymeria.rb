# frozen_string_literal: true

require 'nymeria/company'
require 'nymeria/email'
require 'nymeria/person'

require 'json'
require 'net/http'

# Nymeria is our primary module namespace.
module Nymeria
  API_KEY = ''
  BASE_URL = 'https://www.nymeria.io/api/v4'
  USER_AGENT = 'nymeria.rb/2.0.8'

  class << self
    def request(req)
      req['X-Api-Key'] = API_KEY
      req['User-Agent'] = USER_AGENT
      req
    end
  end
end
