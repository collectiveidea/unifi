module Unifi
  class AuthorizeGuest < PostToController
    include Troupe

    expects :site    # Controller site id
    expects :mac     # MAC address of the user
    expects :minutes # Number of minutes to authorize the user for
    permits :up      # TX bandwidth in Kbps
    permits :down    # RX bandwidth in Kbps

    provides(:url) { "/api/s/#{site}/cmd/stamgr" }

    provides :json do
      {
        cmd: 'authorize-guest',
        mac: mac,
        minutes: minutes,
        up: up,
        down: down
      }.delete_if { |k, v| v == nil }.to_json
    end
  end
end