require 'openssl'
require 'json'
require 'faraday'
require 'faraday-cookie_jar'
require 'faraday_middleware'
require 'troupe'
require 'addressable'
require 'unifi/version'
require 'unifi/controller'
require 'unifi/get_from_controller'
require 'unifi/post_to_controller'
require 'unifi/login'
require 'unifi/authorize_guest'
require 'unifi/unauthorize_guest'
require 'unifi/list_clients'

module Unifi
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
end
