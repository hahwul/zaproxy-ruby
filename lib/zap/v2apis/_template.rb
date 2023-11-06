# frozen_string_literal: true

class ZAPv2 < ZAP
  class Template
    def initialize(client)
      @client = client
    end

    def sample(_arg)
      @client.get('/JSON/template/view/sample/')
    end
  end
end
