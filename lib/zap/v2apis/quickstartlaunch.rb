# frozen_string_literal: true

class ZAPv2 < ZAP
  class QuickStartLaunch
    def initialize(client)
      @client = client
    end

    def start_page
      @client.get('/JSON/quickstart/view/startPage/')
    end
  end
end
