# frozen_string_literal: true

class ZAPv2 < ZAP
  class AlertFilter
    def initialize(client)
      @client = client
    end

    def alert_filter_list(context_id = nil)
      @client.get("/JSON/alertFilter/view/alertFilterList/?contextId=#{context_id}")
    end

    def global_alert_filter_list
      @client.get('/JSON/alertFilter/view/globalAlertFilterList/')
    end

    def add_alert_filter(context_id = nil, rule_id = nil, new_level = nil, url = nil, url_is_regex = nil, parameter = nil, enabled = nil, parameter_is_regex = nil, attack = nil, attack_is_regex = nil, evidence = nil, evidence_is_regex = nil, methods = nil)
      @client.get("/JSON/alertFilter/action/addAlertFilter/?contextId=#{context_id}&ruleId=#{rule_id}&newLevel=#{new_level}&url=#{url}&urlIsRegex=#{url_is_regex}&parameter=#{parameter}&enabled=#{enabled}&parameterIsRegex=#{parameter_is_regex}&attack=#{attack}&attackIsRegex=#{attack_is_regex}&evidence=#{evidence}&evidenceIsRegex=#{evidence_is_regex}&methods=#{methods}")
    end

    def add_global_alert_filter(rule_id = nil, new_level = nil, url = nil, url_is_regex = nil, parameter = nil, enabled = nil, parameter_is_regex = nil, attack = nil, attack_is_regex = nil, evidence = nil, evidence_is_regex = nil, methods = nil)
      @client.get("/JSON/alertFilter/action/addGlobalAlertFilter/?ruleId=#{rule_id}&newLevel=#{new_level}&url=#{url}&urlIsRegex=#{url_is_regex}&parameter=#{parameter}&enabled=#{enabled}&parameterIsRegex=#{parameter_is_regex}&attack=#{attack}&attackIsRegex=#{attack_is_regex}&evidence=#{evidence}&evidenceIsRegex=#{evidence_is_regex}&methods=#{methods}")
    end

    def apply_all
      @client.get('/JSON/alertFilter/action/applyAll/')
    end

    def apply_context
      @client.get('/JSON/alertFilter/action/applyContext/')
    end

    def apply_global
      @client.get('/JSON/alertFilter/action/applyGlobal/')
    end

    def remove_alert_filter(context_id = nil, rule_id = nil, new_level = nil, url = nil, url_is_regex = nil, parameter = nil, enabled = nil, parameter_is_regex = nil, attack = nil, attack_is_regex = nil, evidence = nil, evidence_is_regex = nil, methods = nil)
      @client.get("/JSON/alertFilter/action/removeAlertFilter/?contextId=#{context_id}&ruleId=#{rule_id}&newLevel=#{new_level}&url=#{url}&urlIsRegex=#{url_is_regex}&parameter=#{parameter}&enabled=#{enabled}&parameterIsRegex=#{parameter_is_regex}&attack=#{attack}&attackIsRegex=#{attack_is_regex}&evidence=#{evidence}&evidenceIsRegex=#{evidence_is_regex}&methods=#{methods}")
    end

    def remove_global_alert_filter(rule_id = nil, new_level = nil, url = nil, url_is_regex = nil, parameter = nil, enabled = nil, parameter_is_regex = nil, attack = nil, attack_is_regex = nil, evidence = nil, evidence_is_regex = nil, methods = nil)
      @client.get("/JSON/alertFilter/action/removeGlobalAlertFilter/?ruleId=#{rule_id}&newLevel=#{new_level}&url=#{url}&urlIsRegex=#{url_is_regex}&parameter=#{parameter}&enabled=#{enabled}&parameterIsRegex=#{parameter_is_regex}&attack=#{attack}&attackIsRegex=#{attack_is_regex}&evidence=#{evidence}&evidenceIsRegex=#{evidence_is_regex}&methods=#{methods}")
    end

    def test_all
      @client.get('/JSON/alertFilter/action/testAll/')
    end

    def test_context
      @client.get('/JSON/alertFilter/action/testContext/')
    end

    def test_global
      @client.get('/JSON/alertFilter/action/testGlobal/')
    end
  end
end
