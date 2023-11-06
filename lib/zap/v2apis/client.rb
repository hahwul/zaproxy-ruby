# frozen_string_literal: true

class ZAPv2 < ZAP
  class Client
    def initialize(client)
      @client = client
    end

    def report_event(event_json)
      @client.get('/json/client/action/reportEvent/', event_json)
    end

    def report_object(object_json)
      @client.get('/json/client/action/reportObject/', object_json)
    end

    def report_zest_script(script_json)
      @client.get('/json/client/action/reportZestScript/', script_json)
    end

    def report_zest_statement(statement_json)
      @client.get('/json/client/action/reportZestStatement/', statement_json)
    end
  end
end
