# frozen_string_literal: true

class ZAPv2 < ZAP
  class Retest
    def initialize(client)
      @client = client
    end

    def retest(alert_ids)
      @client.get("/JSON/retest/action/retest/?alertIds=#{alert_ids}")
    end
  end
end
