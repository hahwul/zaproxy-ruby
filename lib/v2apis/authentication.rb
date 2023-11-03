# frozen_string_literal: true

class ZAPv2 < ZAP
  class Authentication
    def initialize(client)
      @client = client
    end

    def get_authentication_method(contextid)
      @client.get("/JSON/authentication/view/getAuthenticationMethod/?contextId=#{contextid}")
    end

    def get_authentication_method_config_params(authmethodname)
      @client.get("/JSON/authentication/view/getAuthenticationMethodConfigParams/?authMethodName=#{authmethodname}")
    end

    def get_logged_in_indicator(contextid)
      @client.get("/JSON/authentication/view/getLoggedInIndicator/?contextId=#{contextid}")
    end

    def get_logged_out_indicator(contextid)
      @client.get("/JSON/authentication/view/getLoggedOutIndicator/?contextId=#{contextid}")
    end

    def get_supported_authentication_methods
      @client.get('/JSON/authentication/view/getSupportedAuthenticationMethods/')
    end

    def set_authentication_method(contextid, authmethodname, authmethodconfigparams = '')
      @client.get("/JSON/authentication/action/setAuthenticationMethod/?contextId=#{contextid}&authMethodName=#{authmethodname}&authMethodConfigParams=#{authmethodconfigparams}")
    end

    def set_logged_in_indicator(contextid, loggedinindicatorregex)
      @client.get("/JSON/authentication/action/setLoggedInIndicator/?contextId=#{contextid}&loggedInIndicatorRegex=#{loggedinindicatorregex}")
    end

    def set_logged_out_indicator(contextid, loggedoutindicatorregex)
      @client.get("/JSON/authentication/action/setLoggedOutIndicator/?contextId=#{contextid}&loggedOutIndicatorRegex=#{loggedoutindicatorregex}")
    end
  end
end
