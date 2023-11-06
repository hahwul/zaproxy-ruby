# frozen_string_literal: true

class ZAPv2 < ZAP
  class Keyboard
    def initialize(client)
      @client = client
    end

    def cheatsheet_action_order(inc_unset)
      @client.get("/JSON/keyboard/view/cheatsheetActionOrder/?incUnset=#{inc_unset}")
    end

    def cheatsheet_key_order(inc_unset)
      @client.get("/JSON/keyboard/view/cheatsheetKeyOrder/?incUnset=#{inc_unset}")
    end
  end
end
