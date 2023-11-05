# frozen_string_literal: true

class ZAPv2 < ZAP
  class HUD
    def initialize(client)
      @client = client
    end

    def get_ui_option(key)
      @client.get("/JSON/hud/view/getUiOption/?key=#{key}")
    end

    def heartbeat
      @client.get('/JSON/hud/view/heartbeat/')
    end

    def hud_alert_data(url)
      @client.get("/JSON/hud/view/hudAlertData/?url=#{url}")
    end

    def option_allow_unsafe_eval
      @client.get('/JSON/hud/view/optionAllowUnsafeEval/')
    end

    def option_base_directory
      @client.get('/JSON/hud/view/optionBaseDirectory/')
    end

    def option_development_mode
      @client.get('/JSON/hud/view/optionDevelopmentMode/')
    end

    def option_enable_on_domain_msgs
      @client.get('/JSON/hud/view/optionEnableOnDomainMsgs/')
    end

    def option_enable_telemetry
      @client.get('/JSON/hud/view/optionEnableTelemetry/')
    end

    def option_enabled_for_daemon
      @client.get('/JSON/hud/view/optionEnabledForDaemon/')
    end

    def option_enabled_for_desktop
      @client.get('/JSON/hud/view/optionEnabledForDesktop/')
    end

    def option_in_scope_only
      @client.get('/JSON/hud/view/optionInScopeOnly/')
    end

    def option_remove_csp
      @client.get('/JSON/hud/view/optionRemoveCSP/')
    end

    def option_show_welcome_screen
      @client.get('/JSON/hud/view/optionShowWelcomeScreen/')
    end

    def option_skip_tutorial_tasks
      @client.get('/JSON/hud/view/optionSkipTutorialTasks/')
    end

    def option_tutorial_host
      @client.get('/JSON/hud/view/optionTutorialHost/')
    end

    def option_tutorial_port
      @client.get('/JSON/hud/view/optionTutorialPort/')
    end

    def option_tutorial_tasks_done
      @client.get('/JSON/hud/view/optionTzutorialTasksDone/')
    end

    def option_tutorial_test_mode
      @client.get('/JSON/hud/view/optionTutorialTestMode/')
    end

    def option_tutorial_updates
      @client.get('/JSON/hud/view/optionTutorialUpdates/')
    end

    def tutorial_updates
      @client.get('/JSON/hud/view/tutorialUpdates/')
    end

    def upgraded_domains
      @client.get('/JSON/hud/view/upgradedDomains/')
    end

    def log(record)
      @client.get("/JSON/hud/action/log/?record=#{record}")
    end

    def record_request(header, body)
      @client.get("/JSON/hud/action/recordRequest/?header=#{header}&body=#{body}")
    end

    def reset_tutorial_tasks
      @client.get('/JSON/hud/action/resetTutorialTasks/')
    end

    def set_option_base_directory(string)
      @client.get("/JSON/hud/action/setOptionBaseDirectory/?String=#{string}")
    end

    def set_option_development_mode(boolean)
      @client.get("/JSON/hud/action/setOptionDevelopmentMode/?Boolean=#{boolean}")
    end

    def set_option_enable_on_domain_msgs(boolean)
      @client.get("/JSON/hud/action/setOptionEnableOnDomainMsgs/?Boolean=#{boolean}")
    end

    def set_option_enabled_for_daemon(boolean)
      @client.get("/JSON/hud/action/setOptionEnabledForDaemon/?Boolean=#{boolean}")
    end

    def set_option_enabled_for_desktop(boolean)
      @client.get("/JSON/hud/action/setOptionEnabledForDesktop/?Boolean=#{boolean}")
    end

    def set_option_in_scope_only(boolean)
      @client.get("/JSON/hud/action/setOptionInScopeOnly/?Boolean=#{boolean}")
    end

    def set_option_remove_csp(boolean)
      @client.get("/JSON/hud/action/setOptionRemoveCSP/?Boolean=#{boolean}")
    end

    def set_option_show_welcome_screen(boolean)
      @client.get("/JSON/hud/action/setOptionShowWelcomeScreen/?Boolean=#{boolean}")
    end

    def set_option_skip_tutorial_tasks(boolean)
      @client.get("/JSON/hud/action/setOptionSkipTutorialTasks/?Boolean=#{boolean}")
    end

    def set_option_tutorial_task_done(string)
      @client.get("/JSON/hud/action/setOptionTutorialTaskDone/?String=#{string}")
    end

    def set_option_tutorial_test_mode(boolean)
      @client.get("/JSON/hud/action/setOptionTutorialTestMode/?Boolean=#{boolean}")
    end

    def set_ui_option(key, value)
      @client.get("/JSON/hud/action/setUiOption/?key=#{key}&value=#{value}")
    end

    def changes_in_html
      @client.get('/OTHER/hud/other/changesInHtml/')
    end
  end
end
