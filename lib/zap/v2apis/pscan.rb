# frozen_string_literal: true

class ZAPv2 < ZAP
  class Pscan
    def initialize(client)
      @client = client
    end

    def current_rule
      @client.get('/JSON/pscan/view/currentRule/')
    end

    def current_tasks
      @client.get('/JSON/pscan/view/currentTasks/')
    end

    def max_alerts_per_rule
      @client.get('/JSON/pscan/view/maxAlertsPerRule/')
    end

    def records_to_scan
      @client.get('/JSON/pscan/view/recordsToScan/')
    end

    def scan_only_in_scope
      @client.get('/JSON/pscan/view/scanOnlyInScope/')
    end

    def scanners
      @client.get('/JSON/pscan/view/scanners/')
    end

    def clear_queue
      @client.get('/JSON/pscan/action/clearQueue/')
    end

    def disable_all_scanners
      @client.get('/JSON/pscan/action/disableAllScanners/')
    end

    def disable_all_tags
      @client.get('/JSON/pscan/action/disableAllTags/')
    end

    def disable_scanners(ids)
      @client.get("/JSON/pscan/action/disableScanners/?ids=#{ids}")
    end

    def enable_all_scanners
      @client.get('/JSON/pscan/action/enableAllScanners/')
    end

    def enable_all_tags
      @client.get('/JSON/pscan/action/enableAllTags/')
    end

    def enable_scanners(ids)
      @client.get("/JSON/pscan/action/enableScanners/?ids=#{ids}")
    end

    def set_enabled(enabled)
      @client.get("/JSON/pscan/action/setEnabled/?enabled=#{enabled}")
    end

    def set_max_alerts_per_rule(max_alerts)
      @client.get("/JSON/pscan/action/setMaxAlertsPerRule/?maxAlerts=#{max_alerts}")
    end

    def set_scan_only_in_scope(only_in_scope)
      @client.get("/JSON/pscan/action/setScanOnlyInScope/?onlyInScope=#{only_in_scope}")
    end

    def set_scanner_alert_threshold(id, alert_threshold)
      @client.get("/JSON/pscan/action/setScannerAlertThreshold/?id=#{id}&alertThreshold=#{alert_threshold}")
    end
  end
end
