# frozen_string_literal: true

class ZAPv2 < ZAP
  class ForcedUser
    def initialize(client)
      @client = client
    end

    def get_forced_user(contextid)
      @client.get("/JSON/forcedUser/view/getForcedUser/?contextId=#{contextid}")
    end

    def is_forced_user_mode_enabled
      @client.get('/JSON/forcedUser/view/isForcedUserModeEnabled/')
    end

    def set_forced_user(contextid, userid)
      @client.get("/JSON/forcedUser/action/setForcedUser/?contextId=#{contextid}&userId=#{userid}")
    end

    def set_forced_user_mode_enabled(boolean)
      @client.get("/JSON/forcedUser/action/setForcedUserModeEnabled/?boolean=#{boolean}")
    end
  end
end
