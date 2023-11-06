# frozen_string_literal: true

class ZAPv2 < ZAP
  class Revisit
    def initialize(client)
      @client = client
    end

    def revisit_list
      @client.get('/JSON/revisit/view/revisitList/')
    end

    def revisit_site_off(site)
      @client.get("/JSON/revisit/action/revisitSiteOff/?site=#{site}")
    end

    def revisit_site_on(site, start_time, end_time)
      @client.get("/JSON/revisit/action/revisitSiteOn/?site=#{site}&startTime=#{start_time}&endTime=#{end_time}")
    end
  end
end
