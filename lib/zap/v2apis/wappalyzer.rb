# frozen_string_literal: true

class ZAPv2 < ZAP
  class Wappalyzer
    def initialize(client)
      @client = client
    end

    def list_all
      @client.get('/JSON/wappalyzer/view/listAll/')
    end

    def list_site(site)
      @client.get("/JSON/wappalyzer/view/listSite/?site=#{site}")
    end

    def list_sites
      @client.get('/JSON/wappalyzer/view/listSites/')
    end
  end
end
