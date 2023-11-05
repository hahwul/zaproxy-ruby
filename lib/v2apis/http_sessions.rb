# frozen_string_literal: true

class ZAPv2 < ZAP
  class HTTPSessions
    def initialize(client)
      @client = client
    end

    def active_session(site)
      @client.get("/JSON/httpSessions/view/activeSession/?site=#{site}")
    end

    def default_session_tokens
      @client.get('/JSON/httpSessions/view/defaultSessionTokens/')
    end

    def session_tokens(site)
      @client.get("/JSON/httpSessions/view/sessionTokens/?site=#{site}")
    end

    def sessions(site, session = nil)
      @client.get("/JSON/httpSessions/view/sessions/?site=#{site}&session=#{session}")
    end

    def sites
      @client.get('/JSON/httpSessions/view/sites/')
    end

    def add_default_session_token(token, enabled)
      @client.get("/JSON/httpSessions/action/addDefaultSessionToken/?token=#{token}&enabled=#{enabled}")
    end

    def add_session_token(site, session_token)
      @client.get("/JSON/httpSessions/action/addSessionToken/?site=#{site}&sessionToken=#{session_token}")
    end

    def create_empty_session(site, session = nil)
      @client.get("/JSON/httpSessions/action/createEmptySession/?site=#{site}&session=#{session}")
    end

    def remove_default_session_token(token)
      @client.get("/JSON/httpSessions/action/removeDefaultSessionToken/?token=#{token}")
    end

    def remove_session(site, session)
      @client.get("/JSON/httpSessions/action/removeSession/?site=#{site}&session=#{session}")
    end

    def remove_session_token(site, session_token)
      @client.get("/JSON/httpSessions/action/removeSessionToken/?site=#{site}&sessionToken=#{session_token}")
    end

    def rename_session(site, old_session_name, new_session_name)
      @client.get("/JSON/httpSessions/action/renameSession/?site=#{site}&oldSessionName=#{old_session_name}&newSessionName=#{new_session_name}")
    end

    def set_active_session(site, session)
      @client.get("/JSON/httpSessions/action/setActiveSession/?site=#{site}&session=#{session}")
    end

    def set_default_session_token_enabled(token, enabled)
      @client.get("/JSON/httpSessions/action/setDefaultSessionTokenEnabled/?token=#{token}&enabled=#{enabled}")
    end

    def set_session_token_value(site, session, session_token, token_value)
      @client.get("/JSON/httpSessions/action/setSessionTokenValue/?site=#{site}&session=#{session}&sessionToken=#{session_token}&tokenValue=#{token_value}")
    end

    def unset_active_session(site)
      @client.get("/JSON/httpSessions/action/unsetActiveSession/?site=#{site}")
    end
  end
end
