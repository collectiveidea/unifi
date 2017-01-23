module Unifi
  class ListDevices < GetFromController
    include Troupe

    expects :site    # Controller site id

    provides(:url) { "/api/s/#{site}/stat/device" }
  end
end
