module Unifi
  class GetFromController
    include Troupe

    expects :conn # Faraday connection from a Controller object

    provides :response

    def call
      self.response = conn.get do |req|
        req.url url
      end
    end
  end
end
