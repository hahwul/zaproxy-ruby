# frozen_string_literal: true

class ZAPv2 < ZAP
  class Exim
    def initialize(client)
      @client = client
    end
    
    def import_har(file_path)
      @client.get("/JSON/exim/action/importHar/?filePath=#{file_path}")
    end

    def import_modsec2_logs(file_path)
      @client.get("/JSON/exim/action/importModsec2Logs/?filePath=#{file_path}")
    end

    def import_urls(file_path)
      @client.get("/JSON/exim/action/importUrls/?filePath=#{file_path}")
    end

    def import_zap_logs(file_path)
      @client.get("/JSON/exim/action/importZapLogs/?filePath=#{file_path}")
    end

    def export_har(baseurl, start, count)
      @client.get("/OTHER/exim/other/exportHar/?baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def export_har_by_id(ids)
      @client.get("/OTHER/exim/other/exportHarById/?ids=#{ids}")
    end

    def send_har_request(request, follow_redirects)
      @client.get("/JSON/exim/action/sendHarRequest/?request=#{request}&followRedirects=#{follow_redirects}")
    end
  end
end
