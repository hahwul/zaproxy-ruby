# frozen_string_literal: true

class ZAPv2 < ZAP
  class Reveal
    def initialize(client)
      @client = client
    end

    def reveal
      @client.get('/JSON/reveal/view/reveal/')
    end

    def set_reveal(reveal)
      @client.get("/JSON/reveal/action/setReveal/?reveal=#{reveal}")
    end
  end
end
