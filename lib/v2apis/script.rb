# frozen_string_literal: true

class ZAPv2 < ZAP
  class Script
    def initialize(client)
      @client = client
    end

    def global_custom_var(var_key)
      @client.get("/JSON/script/view/globalCustomVar/?varKey=#{var_key}")
    end

    def global_custom_vars
      @client.get('/JSON/script/view/globalCustomVars/')
    end

    def global_var(var_key)
      @client.get("/JSON/script/view/globalVar/?varKey=#{var_key}")
    end

    def global_vars
      @client.get('/JSON/script/view/globalVars/')
    end

    def list_engines
      @client.get('/JSON/script/view/listEngines/')
    end

    def list_scripts
      @client.get('/JSON/script/view/listScripts/')
    end

    def list_types
      @client.get('/JSON/script/view/listTypes/')
    end

    def script_custom_var(script_name, var_key)
      @client.get("/JSON/script/view/scriptCustomVar/?scriptName=#{script_name}&varKey=#{var_key}")
    end

    def script_custom_vars(script_name)
      @client.get("/JSON/script/view/scriptCustomVars/?scriptName=#{script_name}")
    end

    def script_var(script_name, var_key)
      @client.get("/JSON/script/view/scriptVar/?scriptName=#{script_name}&varKey=#{var_key}")
    end

    def script_vars(script_name)
      @client.get("/JSON/script/view/scriptVars/?scriptName=#{script_name}")
    end

    def clear_global_custom_var(var_key)
      @client.get("/JSON/script/action/clearGlobalCustomVar/?varKey=#{var_key}")
    end

    def clear_global_var(var_key)
      @client.get("/JSON/script/action/clearGlobalVar/?varKey=#{var_key}")
    end

    def clear_global_vars
      @client.get('/JSON/script/action/clearGlobalVars/')
    end

    def clear_script_custom_var(script_name, var_key)
      @client.get("/JSON/script/action/clearScriptCustomVar/?scriptName=#{script_name}&varKey=#{var_key}")
    end

    def clear_script_var(script_name, var_key)
      @client.get("/JSON/script/action/clearScriptVar/?scriptName=#{script_name}&varKey=#{var_key}")
    end

    def clear_script_vars(script_name)
      @client.get("/JSON/script/action/clearScriptVars/?scriptName=#{script_name}")
    end

    def disable(script_name)
      @client.get("/JSON/script/action/disable/?scriptName=#{script_name}")
    end

    def enable(script_name)
      @client.get("/JSON/script/action/enable/?scriptName=#{script_name}")
    end

    def load(script_name, script_type, script_engine, file_name, script_description, charset)
      @client.get("/JSON/script/action/load/?scriptName=#{script_name}&scriptType=#{script_type}&scriptEngine=#{script_engine}&fileName=#{file_name}&scriptDescription=#{script_description}&charset=#{charset}")
    end

    def remove(script_name)
      @client.get("/JSON/script/action/remove/?scriptName=#{script_name}")
    end

    def run_stand_alone_script(script_name)
      @client.get("/JSON/script/action/runStandAloneScript/?scriptName=#{script_name}")
    end

    def set_global_var(var_key, var_value)
      @client.get("/JSON/script/action/setGlobalVar/?varKey=#{var_key}&varValue=#{var_value}")
    end

    def set_script_var(script_name, var_key, var_value)
      @client.get("/JSON/script/action/setScriptVar/?scriptName=#{script_name}&varKey=#{var_key}&varValue=#{var_value}")
    end
  end
end
