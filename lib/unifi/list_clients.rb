module Unifi
  class ListClients < GetFromController
    include Troupe

    expects :site    # Controller site id

    provides(:url) { "/api/s/#{site}/stat/sta" }
  end
end
