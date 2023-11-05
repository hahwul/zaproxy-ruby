# frozen_string_literal: true

class ZAPv2 < ZAP
  class Stats
    def initialize(client)
      @client = client
    end

    def all_sites_stats(key_prefix)
      @client.get("/JSON/stats/view/allSitesStats/?keyPrefix=#{key_prefix}")
    end

    def option_in_memory_enabled
      @client.get('/JSON/stats/view/optionInMemoryEnabled/')
    end

    def option_statsd_enabled
      @client.get('/JSON/stats/view/optionStatsdEnabled/')
    end

    def option_statsd_host
      @client.get('/JSON/stats/view/optionStatsdHost/')
    end

    def option_statsd_port
      @client.get('/JSON/stats/view/optionStatsdPort/')
    end

    def option_statsd_prefix
      @client.get('/JSON/stats/view/optionStatsdPrefix/')
    end

    def site_stats(site, key_prefix)
      @client.get("/JSON/stats/view/siteStats/?site=#{site}&keyPrefix=#{key_prefix}")
    end

    def stats(key_prefix)
      @client.get("/JSON/stats/view/stats/?keyPrefix=#{key_prefix}")
    end

    def clear_stats(key_prefix)
      @client.get("/JSON/stats/action/clearStats/?keyPrefix=#{key_prefix}")
    end

    def set_option_in_memory_enabled(boolean)
      @client.get("/JSON/stats/action/setOptionInMemoryEnabled/?boolean=#{boolean}")
    end

    def set_option_statsd_host(string)
      @client.get("/JSON/stats/action/setOptionStatsdHost/?String=#{string}")
    end

    def set_option_statsd_port(integer)
      @client.get("/JSON/stats/action/setOptionStatsdPort/?Integer=#{integer}")
    end

    def set_option_statsd_prefix(string)
      @client.get("/JSON/stats/action/setOptionStatsdPrefix/?String=#{string}")
    end
  end
end
