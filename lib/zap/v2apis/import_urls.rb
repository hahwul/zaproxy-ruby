# frozen_string_literal: true

class ZAPv2 < ZAP
  class ImportURLs
    def initialize(client)
      @client = client
    end

    def importurls(file_path)
      @client.get("/JSON/importurls/action/importurls/?filePath=#{file_path}")
    end
  end
end
