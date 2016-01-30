module Unifi
  class UnauthorizeGuest < PostToController
    include Troupe

    expects :site    # Controller site id
    expects :mac     # MAC address of the user

    provides(:url) { "/api/s/#{site}/cmd/stamgr" }

    provides :json do
      {
        cmd: 'unauthorize-guest',
        mac: id
      }.to_json
    end
  end
end