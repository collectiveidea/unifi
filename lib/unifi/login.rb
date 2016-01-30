module Unifi
  class Login < PostToController
    include Troupe

    provides(:url) { "/api/login" }

    provides :json do
      {
        login: 'login',
        username: ENV['UNIFI_USER'],
        password: ENV['UNIFI_PASSWORD']
      }.to_json
    end
  end
end