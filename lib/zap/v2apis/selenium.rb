# frozen_string_literal: true

class ZAPv2 < ZAP
  class Selenium
    def initialize(client)
      @client = client
    end

    def get_browser_arguments
      @client.get('/JSON/selenium/view/getBrowserArguments/')
    end

    def option_browser_extensions
      @client.get('/JSON/selenium/view/optionBrowserExtensions/')
    end

    def option_chrome_binary_path
      @client.get('/JSON/selenium/view/optionChromeBinaryPath/')
    end

    def option_chrome_driver_path
      @client.get('/JSON/selenium/view/optionChromeDriverPath/')
    end

    def option_firefox_binary_path
      @client.get('/JSON/selenium/view/optionFirefoxBinaryPath/')
    end

    def option_firefox_default_profile
      @client.get('/JSON/selenium/view/optionFirefoxDefaultProfile/')
    end

    def option_firefox_driver_path
      @client.get('/JSON/selenium/view/optionFirefoxDriverPath/')
    end

    def option_ie_driver_path
      @client.get('/JSON/selenium/view/optionIeDriverPath/')
    end

    def option_last_directory
      @client.get('/JSON/selenium/view/optionLastDirectory/')
    end

    def option_phantom_js_binary_path
      @client.get('/JSON/selenium/view/optionPhantomJsBinaryPath/')
    end

    def add_browser_argument(argument, enabled)
      @client.get("/JSON/selenium/action/addBrowserArgument/?argument=#{argument}&enabled=#{enabled}")
    end

    def remove_browser_argument(argument)
      @client.get("/JSON/selenium/action/removeBrowserArgument/?argument=#{argument}")
    end

    def set_browser_argument_enabled(argument, enabled)
      @client.get("/JSON/selenium/action/setBrowserArgumentEnabled/?argument=#{argument}&enabled=#{enabled}")
    end

    def set_option_chrome_binary_path(string)
      @client.get("/JSON/selenium/action/setOptionChromeBinaryPath/?String=#{string}")
    end

    def set_option_chrome_driver_path(string)
      @client.get("/JSON/selenium/action/setOptionChromeDriverPath/?String=#{string}")
    end

    def set_option_firefox_binary_path(string)
      @client.get("/JSON/selenium/action/setOptionFirefoxBinaryPath/?String=#{string}")
    end

    def set_option_firefox_default_profile(string)
      @client.get("/JSON/selenium/action/setOptionFirefoxDefaultProfile/?String=#{string}")
    end

    def set_option_firefox_driver_path(string)
      @client.get("/JSON/selenium/action/setOptionFirefoxDriverPath/?String=#{string}")
    end

    def set_option_ie_driver_path(string)
      @client.get("/JSON/selenium/action/setOptionIeDriverPath/?String=#{string}")
    end

    def set_option_last_directory(string)
      @client.get("/JSON/selenium/action/setOptionLastDirectory/?String=#{string}")
    end

    def set_option_phantom_js_binary_path(string)
      @client.get("/JSON/selenium/action/setOptionPhantomJsBinaryPath/?String=#{string}")
    end
  end
end
