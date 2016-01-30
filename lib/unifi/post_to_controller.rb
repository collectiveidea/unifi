module Unifi
  class PostToController
    include Troupe

    expects :conn # Faraday connection from a Controller object

    provides :response

    provides(:json) { {}.to_json }

    def call
      self.response = conn.post do |req|
        req.url url
        req.body = json
      end
    end
  end
end