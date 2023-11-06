# frozen_string_literal: true

class ZAPv2 < ZAP
  class Autoupdate
    def initialize(client)
      @client = client
    end

    def installed_addons
      @client.get('/JSON/autoupdate/view/installedAddons/')
    end

    def is_latest_version
      @client.get('/JSON/autoupdate/view/isLatestVersion/')
    end

    def latest_version_number
      @client.get('/JSON/autoupdate/view/latestVersionNumber/')
    end

    def local_addons
      @client.get('/JSON/autoupdate/view/localAddons/')
    end

    def marketplace_addons
      @client.get('/JSON/autoupdate/view/marketplaceAddons/')
    end

    def new_addons
      @client.get('/JSON/autoupdate/view/newAddons/')
    end

    def option_addon_directories
      @client.get('/JSON/autoupdate/view/optionAddonDirectories/')
    end

    def option_check_addon_updates
      @client.get('/JSON/autoupdate/view/optionCheckAddonUpdates/')
    end

    def option_check_on_start
      @client.get('/JSON/autoupdate/view/optionCheckOnStart/')
    end

    def option_day_last_checked
      @client.get('/JSON/autoupdate/view/optionDayLastChecked/')
    end

    def option_day_last_install_warned
      @client.get('/JSON/autoupdate/view/optionDayLastInstallWarned/')
    end

    def option_day_last_update_warned
      @client.get('/JSON/autoupdate/view/optionDayLastUpdateWarned/')
    end

    def option_download_directory
      @client.get('/JSON/autoupdate/view/optionDownloadDirectory/')
    end

    def option_download_new_release
      @client.get('/JSON/autoupdate/view/optionDownloadNewRelease/')
    end

    def option_install_addon_updates
      @client.get('/JSON/autoupdate/view/optionInstallAddonUpdates/')
    end

    def option_install_scanner_rules
      @client.get('/JSON/autoupdate/view/optionInstallScannerRules/')
    end

    def option_report_alpha_addons
      @client.get('/JSON/autoupdate/view/optionReportAlphaAddons/')
    end

    def option_report_beta_addons
      @client.get('/JSON/autoupdate/view/optionReportBetaAddons/')
    end

    def option_report_release_addons
      @client.get('/JSON/autoupdate/view/optionReportReleaseAddons/')
    end

    def updated_addons
      @client.get('/JSON/autoupdate/view/updatedAddons/')
    end

    def download_latest_release
      @client.get('/JSON/autoupdate/action/downloadLatestRelease/')
    end

    def install_addon(id)
      @client.get("/JSON/autoupdate/action/installAddon/?id=#{id}")
    end

    def set_option_check_addon_updates(boolean)
      @client.get("/JSON/autoupdate/action/setOptionCheckAddonUpdates/?Boolean=#{boolean}")
    end

    def set_option_check_on_start(boolean)
      @client.get("/JSON/autoupdate/action/setOptionCheckOnStart/?Boolean=#{boolean}")
    end

    def set_option_download_new_release(boolean)
      @client.get("/JSON/autoupdate/action/setOptionDownloadNewRelease/?Boolean=#{boolean}")
    end

    def set_option_install_addon_updates(boolean)
      @client.get("/JSON/autoupdate/action/setOptionInstallAddonUpdates/?Boolean=#{boolean}")
    end

    def set_option_install_scanner_rules(boolean)
      @client.get("/JSON/autoupdate/action/setOptionInstallScannerRules/?Boolean=#{boolean}")
    end

    def set_option_report_alpha_addons(boolean)
      @client.get("/JSON/autoupdate/action/setOptionReportAlphaAddons/?Boolean=#{boolean}")
    end

    def set_option_report_beta_addons(boolean)
      @client.get("/JSON/autoupdate/action/setOptionReportBetaAddons/?Boolean=#{boolean}")
    end

    def set_option_report_release_addons(boolean)
      @client.get("/JSON/autoupdate/action/setOptionReportReleaseAddons/?Boolean=#{boolean}")
    end

    def uninstall_addon(id)
      @client.get("/JSON/autoupdate/action/uninstallAddon/?id=#{id}")
    end
  end
end
