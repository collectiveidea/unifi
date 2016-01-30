require 'openssl'
require 'faraday'
require 'faraday-cookie_jar'
require 'troupe'
require 'addressable'
require 'unifi/version'
require 'unifi/controller'
require 'unifi/post_to_controller'
require 'unifi/login'
require 'unifi/authorize_guest'
require 'unifi/unauthorize_guest'

module Unifi
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
end
