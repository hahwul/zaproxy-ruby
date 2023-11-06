# frozen_string_literal: true

class ZAPv2 < ZAP
  class Soap
    def initialize(client)
      @client = client
    end

    def import_file(file)
      @client.get("/JSON/soap/action/importFile/?file=#{file}")
    end

    def import_url(url)
      @client.get("/JSON/soap/action/importUrl/?url=#{url}")
    end
  end
end
