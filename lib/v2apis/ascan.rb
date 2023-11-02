# frozen_string_literal: true

class ZAPv2 < ZAP
  class Ascan
    def initialize(client)
      @client = client
    end

    def alerts_ids(scanid)
      @client.get("/JSON/ascan/view/alertsIds/?scanId=#{scanid}")
    end

    def attack_mode_queue
      @client.get('/JSON/ascan/view/attackModeQueue/')
    end

    def excluded_from_scan
      @client.get('/JSON/ascan/view/excludedFromScan/')
    end

    def excluded_param_types
      @client.get('/JSON/ascan/view/excludedParamTypes/')
    end

    def excluded_params
      @client.get('/JSON/ascan/view/excludedParams/')
    end

    def messages_ids(scanid)
      @client.get("/JSON/ascan/view/messagesIds/?scanId=#{scanid}")
    end

    def option_add_query_param
      @client.get('/JSON/ascan/view/optionAddQueryParam/')
    end

    def option_allow_attack_on_start
      @client.get('/JSON/ascan/view/optionAllowAttackOnStart/')
    end

    def option_attack_policy
      @client.get('/JSON/ascan/view/optionAttackPolicy/')
    end

    def option_default_policy
      @client.get('/JSON/ascan/view/optionDefaultPolicy/')
    end

    def option_delay_in_ms
      @client.get('/JSON/ascan/view/optionDelayInMs/')
    end

    def option_excluded_param_list
      @client.get('/JSON/ascan/view/optionExcludedParamList/')
    end

    def option_handle_anti_csrf_tokens
      @client.get('/JSON/ascan/view/optionHandleAntiCSRFTokens/')
    end

    def option_host_per_scan
      @client.get('/JSON/ascan/view/optionHostPerScan/')
    end

    def option_inject_plugin_id_in_header
      @client.get('/JSON/ascan/view/optionInjectPluginIdInHeader/')
    end

    def option_max_alerts_per_rule
      @client.get('/JSON/ascan/view/optionMaxAlertsPerRule/')
    end

    def option_max_chart_time_in_mins
      @client.get('/JSON/ascan/view/optionMaxChartTimeInMins/')
    end

    def option_max_results_to_list
      @client.get('/JSON/ascan/view/optionMaxResultsToList/')
    end

    def option_max_rule_duration_in_mins
      @client.get('/JSON/ascan/view/optionMaxRuleDurationInMins/')
    end

    def option_max_scan_duration_in_mins
      @client.get('/JSON/ascan/view/optionMaxScanDurationInMins/')
    end

    def option_max_scans_in_ui
      @client.get('/JSON/ascan/view/optionMaxScansInUI/')
    end

    def option_prompt_in_attack_mode
      @client.get('/JSON/ascan/view/optionPromptInAttackMode/')
    end

    def option_prompt_to_clear_finished_scans
      @client.get('/JSON/ascan/view/optionPromptToClearFinishedScans/')
    end

    def option_rescan_in_attack_mode
      @client.get('/JSON/ascan/view/optionRescanInAttackMode/')
    end

    def option_scan_headers_all_requests
      @client.get('/JSON/ascan/view/optionScanHeadersAllRequests/')
    end

    def option_scan_null_json_values
      @client.get('/JSON/ascan/view/optionScanNullJsonValues/')
    end

    def option_show_advanced_dialog
      @client.get('/JSON/ascan/view/optionShowAdvancedDialog/')
    end

    def option_target_params_enabled_rpc
      @client.get('/JSON/ascan/view/optionTargetParamsEnabledRPC/')
    end

    def option_target_params_injectable
      @client.get('/JSON/ascan/view/optionTargetParamsInjectable/')
    end

    def option_thread_per_host
      @client.get('/JSON/ascan/view/optionThreadPerHost/')
    end

    def policies(scanpolicyname = '', policyid = '')
      @client.get("/JSON/ascan/view/policies/?scanPolicyName=#{scanpolicyname}&policyId=#{policyid}")
    end

    def scan_policy_names
      @client.get('/JSON/ascan/view/scanPolicyNames/')
    end

    def scan_progress(scanid)
      @client.get("/JSON/ascan/view/scanProgress/?scanId=#{scanid}")
    end

    def scanners(scanpolicyname = '', policyid = '')
      @client.get("/JSON/ascan/view/scanners/?scanPolicyName=#{scanpolicyname}&policyId=#{policyid}")
    end

    def scans
      @client.get('/JSON/ascan/view/scans/')
    end

    def status(scanid)
      @client.get("/JSON/ascan/view/status/?scanId=#{scanid}")
    end

    def add_excluded_param(name, type, url)
      @client.get("/JSON/ascan/action/addExcludedParam/?name=#{name}&type=#{type}&url=#{url}")
    end

    def add_scan_policy(scanpolicyname, alertthreshold, attackstrength)
      @client.get("/JSON/ascan/action/addScanPolicy/?scanPolicyName=#{scanpolicyname}&alertThreshold=#{alertthreshold}&attackStrength=#{attackstrength}")
    end

    def clear_excluded_from_scan
      @client.get('/JSON/ascan/action/clearExcludedFromScan/')
    end

    def disable_all_scanners(scanpolicyname = '')
      @client.get("/JSON/ascan/action/disableAllScanners/?scanPolicyName=#{scanpolicyname}")
    end

    def disable_scanners(ids, scanpolicyname = '')
      @client.get("/JSON/ascan/action/disableScanners/?ids=#{ids}&scanPolicyName=#{scanpolicyname}")
    end

    def enable_all_scanners(scanpolicyname = '')
      @client.get("/JSON/ascan/action/enableAllScanners/?scanPolicyName=#{scanpolicyname}")
    end

    def enable_scanners(ids, scanpolicyname = '')
      @client.get("/JSON/ascan/action/enableScanners/?ids=#{ids}&scanPolicyName=#{scanpolicyname}")
    end

    def exclude_from_scan(regex)
      @client.get("/JSON/ascan/action/excludeFromScan/?regex=#{regex}")
    end

    def import_scan_policy(path)
      @client.get("/JSON/ascan/action/importScanPolicy/?path=#{path}")
    end

    def modify_excluded_param(idx, name, type, url)
      @client.get("/JSON/ascan/action/modifyExcludedParam/?idx=#{idx}&name=#{name}&type=#{type}&url=#{url}")
    end

    def pause(scanid)
      @client.get("/JSON/ascan/action/pause/?scanId=#{scanid}")
    end

    def pause_all_scans
      @client.get('/JSON/ascan/action/pauseAllScans/')
    end

    def remove_all_scans
      @client.get('/JSON/ascan/action/removeAllScans/')
    end

    def remove_excluded_param(idx)
      @client.get("/JSON/ascan/action/removeExcludedParam/?idx=#{idx}")
    end

    def remove_scan(scanid)
      @client.get("/JSON/ascan/action/removeScan/?scanId=#{scanid}")
    end

    def remove_scan_policy(scanpolicyname)
      @client.get("/JSON/ascan/action/removeScanPolicy/?scanPolicyName=#{scanpolicyname}")
    end

    def resume(scanid)
      @client.get("/JSON/ascan/action/resume/?scanId=#{scanid}")
    end

    def resume_all_scans
      @client.get('/JSON/ascan/action/resumeAllScans/')
    end

    def scan(url, recurse = '', inscopeonly = '', scanpolicyname = '', method = '', postdata = '', contextid = '')
      @client.get("/JSON/ascan/action/scan/?url=#{url}&recurse=#{recurse}&inScopeOnly=#{inscopeonly}&scanPolicyName=#{scanpolicyname}&method=#{method}&postData=#{postdata}&contextId=#{contextid}")
    end

    def scan_as_user(url, contextid, userid, recurse = '', scanpolicyname = '', method = '', postdata = '')
      @client.get("/JSON/ascan/action/scanAsUser/?url=#{url}&contextId=#{contextid}&userId=#{userid}&recurse=#{recurse}&scanPolicyName=#{scanpolicyname}&method=#{method}&postData=#{postdata}")
    end

    def set_enabled_policies(ids, scanpolicyname = '')
      @client.get("/JSON/ascan/action/setEnabledPolicies/?ids=#{ids}&scanPolicyName=#{scanpolicyname}")
    end

    def set_option_add_query_param(boolean)
      @client.get("/JSON/ascan/action/setOptionAddQueryParam/?Boolean=#{boolean}")
    end

    def set_option_allow_attack_on_start(boolean)
      @client.get("/JSON/ascan/action/setOptionAllowAttackOnStart/?Boolean=#{boolean}")
    end

    def set_option_attack_policy(string)
      @client.get("/JSON/ascan/action/setOptionAttackPolicy/?String=#{string}")
    end

    def set_option_default_policy(string)
      @client.get("/JSON/ascan/action/setOptionDefaultPolicy/?String=#{string}")
    end

    def set_option_delay_in_ms(integer)
      @client.get("/JSON/ascan/action/setOptionDelayInMs/?Integer=#{integer}")
    end

    def set_option_handle_anti_csrf_tokens(boolean)
      @client.get("/JSON/ascan/action/setOptionHandleAntiCSRFTokens/?Boolean=#{boolean}")
    end

    def set_option_host_per_scan(integer)
      @client.get("/JSON/ascan/action/setOptionHostPerScan/?Integer=#{integer}")
    end

    def set_option_inject_plugin_id_in_header(boolean)
      @client.get("/JSON/ascan/action/setOptionInjectPluginIdInHeader/?Boolean=#{boolean}")
    end

    def set_option_max_alerts_per_rule(integer)
      @client.get("/JSON/ascan/action/setOptionMaxAlertsPerRule/?Integer=#{integer}")
    end

    def set_option_max_chart_time_in_mins(integer)
      @client.get("/JSON/ascan/action/setOptionMaxChartTimeInMins/?Integer=#{integer}")
    end

    def set_option_max_results_to_list(integer)
      @client.get("/JSON/ascan/action/setOptionMaxResultsToList/?Integer=#{integer}")
    end

    def set_option_max_rule_duration_in_mins(integer)
      @client.get("/JSON/ascan/action/setOptionMaxRuleDurationInMins/?Integer=#{integer}")
    end

    def set_option_max_scan_duration_in_mins(integer)
      @client.get("/JSON/ascan/action/setOptionMaxScanDurationInMins/?Integer=#{integer}")
    end

    def set_option_max_scans_in_ui(integer)
      @client.get("/JSON/ascan/action/setOptionMaxScansInUI/?Integer=#{integer}")
    end

    def set_option_prompt_in_attack_mode(boolean)
      @client.get("/JSON/ascan/action/setOptionPromptInAttackMode/?Boolean=#{boolean}")
    end

    def set_option_prompt_to_clear_finished_scans(boolean)
      @client.get("/JSON/ascan/action/setOptionPromptToClearFinishedScans/?Boolean=#{boolean}")
    end

    def set_option_rescan_in_attack_mode(boolean)
      @client.get("/JSON/ascan/action/setOptionRescanInAttackMode/?Boolean=#{boolean}")
    end

    def set_option_scan_headers_all_requests(boolean)
      @client.get("/JSON/ascan/action/setOptionScanHeadersAllRequests/?Boolean=#{boolean}")
    end

    def set_option_scan_null_json_values(boolean)
      @client.get("/JSON/ascan/action/setOptionScanNullJsonValues/?Boolean=#{boolean}")
    end

    def set_option_show_advanced_dialog(boolean)
      @client.get("/JSON/ascan/action/setOptionShowAdvancedDialog/?Boolean=#{boolean}")
    end

    def set_option_target_params_enabled_rpc(integer)
      @client.get("/JSON/ascan/action/setOptionTargetParamsEnabledRPC/?Integer=#{integer}")
    end

    def set_option_target_params_injectable(integer)
      @client.get("/JSON/ascan/action/setOptionTargetParamsInjectable/?Integer=#{integer}")
    end

    def set_option_thread_per_host(integer)
      @client.get("/JSON/ascan/action/setOptionThreadPerHost/?Integer=#{integer}")
    end

    def set_policy_alert_threshold(id, alertthreshold, scanpolicyname = '')
      @client.get("/JSON/ascan/action/setPolicyAlertThreshold/?id=#{id}&alertThreshold=#{alertthreshold}&scanPolicyName=#{scanpolicyname}")
    end

    def set_policy_attack_strength(id, attackstrength, scanpolicyname = '')
      @client.get("/JSON/ascan/action/setPolicyAttackStrength/?id=#{id}&attackStrength=#{attackstrength}&scanPolicyName=#{scanpolicyname}")
    end

    def set_scanner_alert_threshold(id, alertthreshold, scanpolicyname = '')
      @client.get("/JSON/ascan/action/setScannerAlertThreshold/?id=#{id}&alertThreshold=#{alertthreshold}&scanPolicyName=#{scanpolicyname}")
    end

    def set_scanner_attack_strength(id, attackstrength, scanpolicyname = '')
      @client.get("/JSON/ascan/action/setScannerAttackStrength/?id=#{id}&attackStrength=#{attackstrength}&scanPolicyName=#{scanpolicyname}")
    end

    def skip_scanner(scanid, scannerid)
      @client.get("/JSON/ascan/action/skipScanner/?scanId=#{scanid}&scannerId=#{scannerid}")
    end

    def stop(scanid)
      @client.get("/JSON/ascan/action/stop/?scanId=#{scanid}")
    end

    def stop_all_scans
      @client.get('/JSON/ascan/action/stopAllScans/')
    end

    def update_scan_policy(scanpolicyname, alertthreshold, attackstrength)
      @client.get("/JSON/ascan/action/updateScanPolicy/?scanPolicyName=#{scanpolicyname}&alertThreshold=#{alertthreshold}&attackStrength=#{attackstrength}")
    end
  end
end
