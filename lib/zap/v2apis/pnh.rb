# frozen_string_literal: true

class ZAPv2 < ZAP
  class PnH
    def initialize(client)
      @client = client
    end

    def monitor(message)
      @client.get("/JSON/pnh/action/monitor/?message=#{message}")
    end

    def oracle
      @client.get('/JSON/pnh/view/oracle/')
    end

    def start_monitoring(url)
      @client.get("/JSON/pnh/action/startMonitoring/?url=#{url}")
    end

    def stop_monitoring(id)
      @client.get("/JSON/pnh/action/stopMonitoring/?id=#{id}")
    end

    def fx_pnh_xpi
      @client.get('/OTHER/core/other/fx_pnh.xpi/')
    end

    def manifest
      @client.get('/OTHER/core/other/manifest/')
    end

    def pnh
      @client.get('/OTHER/core/other/pnh/')
    end

    def service
      @client.get('/OTHER/core/other/service/')
    end
  end
end
