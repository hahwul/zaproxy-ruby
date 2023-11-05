# frozen_string_literal: true

class ZAPv2 < ZAP
  class Params
    def initialize(client)
      @client = client
    end

    def params(site)
      @client.get("/JSON/params/view/params/?site=#{site}")
    end
  end
end
