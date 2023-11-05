# frozen_string_literal: true

class ZAPv2 < ZAP
  class RuleConfig
    def initialize(client)
      @client = client
    end

    def all_rule_configs
      @client.get('/JSON/ruleConfig/view/allRuleConfigs/')
    end

    def rule_config_value(key)
      @client.get("/JSON/ruleConfig/view/ruleConfigValue/?key=#{key}")
    end

    def reset_all_rule_config_values
      @client.get('/JSON/ruleConfig/action/resetAllRuleConfigValues/')
    end

    def reset_rule_config_value(key)
      @client.get("/JSON/ruleConfig/action/resetRuleConfigValue/?key=#{key}")
    end

    def set_rule_config_value(key, value)
      @client.get("/JSON/ruleConfig/action/setRuleConfigValue/?key=#{key}&value=#{value}")
    end
  end
end
