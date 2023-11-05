# frozen_string_literal: true

class ZAPv2 < ZAP
  class Postman
    def initialize(client)
      @client = client
    end

    def import_file(target, contextid)
      @client.get("/JSON/postman/action/importFile/?target=#{target}&contextId=#{contextid}")
    end

    def import_url(host_override, contextid)
      @client.get("/JSON/postman/action/importUrl/?hostOverride=#{host_override}&contextId=#{contextid}")
    end
  end
end
