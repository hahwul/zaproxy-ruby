# frozen_string_literal: true

class ZAPv2 < ZAP
  class Replacer
    def initialize(client)
      @client = client
    end

    def rules
      @client.get('/JSON/replacer/view/rules/')
    end

    def add_rule(description, enabled, match_type, match_regex, match_string, replacement, initiators, url)
      @client.get("/JSON/replacer/action/addRule/?description=#{description}&enabled=#{enabled}&matchType=#{match_type}&matchRegex=#{match_regex}&matchString=#{match_string}&replacement=#{replacement}&initiators=#{initiators}&url=#{url}")
    end

    def remove_rule(description)
      @client.get("/JSON/replacer/action/removeRule/?description=#{description}")
    end

    def set_enabled(description, bool)
      @client.get("/JSON/replacer/action/setEnabled/?description=#{description}&bool=#{bool}")
    end
  end
end
