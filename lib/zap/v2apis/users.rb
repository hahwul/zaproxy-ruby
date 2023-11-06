# frozen_string_literal: true

class ZAPv2 < ZAP
  class Users
    def initialize(client)
      @client = client
    end

    def get_authentication_credentials(contextid, userid)
      @client.get("/JSON/users/view/getAuthenticationCredentials/?contextId=#{contextid}&userId=#{userid}")
    end

    def get_authentication_credentials_config_params(contextid)
      @client.get("/JSON/users/view/getAuthenticationCredentialsConfigParams/?contextId=#{contextid}")
    end

    def get_authentication_session(contextid, userid)
      @client.get("/JSON/users/view/getAuthenticationSession/?contextId=#{contextid}&userId=#{userid}")
    end

    def get_authentication_state(contextid, userid)
      @client.get("/JSON/users/view/getAuthenticationState/?contextId=#{contextid}&userId=#{userid}")
    end

    def get_user_by_id(contextid, userid)
      @client.get("/JSON/users/view/getUserById/?contextId=#{contextid}&userId=#{userid}")
    end

    def users_list(contextid)
      @client.get("/JSON/users/view/usersList/?contextId=#{contextid}")
    end

    def authenticate_as_user(contextid, userid)
      @client.get("/JSON/users/action/authenticateAsUser/?contextId=#{contextid}&userId=#{userid}")
    end

    def new_user(contextid, name)
      @client.get("/JSON/users/action/newUser/?contextId=#{contextid}&name=#{name}")
    end

    def poll_as_user(contextid, userid)
      @client.get("/JSON/users/action/pollAsUser/?contextId=#{contextid}&userId=#{userid}")
    end

    def remove_user(contextid, userid)
      @client.get("/JSON/users/action/removeUser/?contextId=#{contextid}&userId=#{userid}")
    end

    def set_authentication_credentials(contextid, userid, authcredentialsconfigparams)
      @client.get("/JSON/users/action/setAuthenticationCredentials/?contextId=#{contextid}&userId=#{userid}&authCredentialsConfigParams=#{authcredentialsconfigparams}")
    end

    def set_authentication_state(contextid, userid, lastpollresult, lastpolltimeinms, requestssincelastpoll)
      @client.get("/JSON/users/action/setAuthenticationState/?contextId=#{contextid}&userId=#{userid}&lastPollResult=#{lastpollresult}&lastPollTimeInMs=#{lastpolltimeinms}&requestsSinceLastPoll=#{requestssincelastpoll}")
    end

    def set_cookie(contextid, userid, domain, name, value, path, secure)
      @client.get("/JSON/users/action/setCookie/?contextId=#{contextid}&userId=#{userid}&domain=#{domain}&name=#{name}&value=#{value}&path=#{path}&secure=#{secure}")
    end

    def set_user_enabled(contextid, userid, enabled)
      @client.get("/JSON/users/action/setUserEnabled/?contextId=#{contextid}&userId=#{userid}&enabled=#{enabled}")
    end

    def set_user_name(contextid, userid, name)
      @client.get("/JSON/users/action/setUserName/?contextId=#{contextid}&userId=#{userid}&name=#{name}")
    end
  end
end
