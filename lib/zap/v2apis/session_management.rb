# frozen_string_literal: true

class ZAPv2 < ZAP
  class SessionManagement
    def initialize(client)
      @client = client
    end

    def sample(_arg)
      @client.get('/JSON/template/view/sample/')
    end

    def get_session_management_method(context_id)
      @client.get("/JSON/sessionManagement/view/getSessionManagementMethod/?contextId=#{context_id}")
    end

    def get_session_management_method_config_params(method_name)
      @client.get("/JSON/sessionManagement/view/getSessionManagementMethodConfigParams/?methodName=#{method_name}")
    end

    def get_supported_session_management_methods
      @client.get('/JSON/sessionManagement/view/getSupportedSessionManagementMethods/')
    end

    def set_session_management_method(context_id, method_name, method_config_params)
      @client.get("/JSON/sessionManagement/action/setSessionManagementMethod/?contextId=#{context_id}&methodName=#{method_name}&methodConfigParams=#{method_config_params}")
    end
  end
end
