# frozen_string_literal: true

class ZAPv2 < ZAP
  class Template
    def initialize(client)
      @client = client
    end
  end
end
