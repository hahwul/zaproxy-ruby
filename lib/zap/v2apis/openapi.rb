# frozen_string_literal: true

class ZAPv2 < ZAP
  class OpenAPI
    def initialize(client)
      @client = client
    end

    def import_file(target, contextid)
      @client.get("/JSON/openapi/action/importFile/?target=#{target}&contextId=#{contextid}")
    end

    def import_url(host_override, contextid)
      @client.get("/JSON/openapi/action/importUrl/?hostOverride=#{host_override}&contextId=#{contextid}")
    end
  end
end
