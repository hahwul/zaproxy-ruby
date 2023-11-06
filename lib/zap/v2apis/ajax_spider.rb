# frozen_string_literal: true

class ZAPv2 < ZAP
  class AjaxSpider
    def initialize(client)
      @client = client
    end

    # view
    def allowed_resources
      @client.get('/JSON/ajaxSpider/view/allowedResources/')
    end

    def excluded_elements(contextname = '')
      @client.get("/JSON/ajaxSpider/view/excludedElements/?contextName=#{contextname}")
    end

    def full_results
      @client.get('/JSON/ajaxSpider/view/fullResults/')
    end

    def number_of_results
      @client.get('/JSON/ajaxSpider/view/numberOfResults/')
    end

    def option_browser_id
      @client.get('/JSON/ajaxSpider/view/optionBrowserId/')
    end

    def option_click_default_elems
      @client.get('/JSON/ajaxSpider/view/optionClickDefaultElems/')
    end

    def option_click_elems_once
      @client.get('/JSON/ajaxSpider/view/optionClickElemsOnce/')
    end

    def option_event_wait
      @client.get('/JSON/ajaxSpider/view/optionEventWait/')
    end

    def option_max_crawl_depth
      @client.get('/JSON/ajaxSpider/view/optionMaxCrawlDepth/')
    end

    def option_max_crawl_states
      @client.get('/JSON/ajaxSpider/view/optionMaxCrawlStates/')
    end

    def option_max_duration
      @client.get('/JSON/ajaxSpider/view/optionMaxDuration/')
    end

    def option_number_of_browsers
      @client.get('/JSON/ajaxSpider/view/optionNumberOfBrowsers/')
    end

    def option_random_inputs
      @client.get('/JSON/ajaxSpider/view/optionRandomInputs/')
    end

    def option_reload_wait
      @client.get('/JSON/ajaxSpider/view/optionReloadWait/')
    end

    def results(start, count)
      @client.get("/JSON/ajaxSpider/view/results/?start=#{start}&count=#{count}")
    end

    def status
      @client.get('/JSON/ajaxSpider/view/status/')
    end

    # action
    def add_allowed_resource(regex, enabled = '')
      @client.get("/JSON/ajaxSpider/action/addAllowedResource/?regex=#{regex}&enabled=#{enabled}")
    end

    def add_excluded_element(contextname, description, element, xpath, text, attributename, attributevalue,
                             enabled = '')
      @client.get("/JSON/ajaxSpider/action/addExcludedElement/?contextName=#{contextname}&description=#{description}&element=#{element}&xpath=#{xpath}&text=#{text}&attributeName=#{attributename}&attributeValue=#{attributevalue}&enabled=#{enabled}")
    end

    def modify_excluded_element(contextname, description, element, descriptionnew, xpath, text, attributename,
                                attributevalue, enabled = '')
      @client.get("/JSON/ajaxSpider/action/modifyExcludedElement/?contextName=#{contextname}&description=#{description}&element=#{element}&descriptionNew=#{descriptionnew}&xpath=#{xpath}&text=#{text}&attributeName=#{attributename}&attributeValue=#{attributevalue}&enabled=#{enabled}")
    end

    def remove_allowed_resource(regex)
      @client.get("/JSON/ajaxSpider/action/removeAllowedResource/?regex=#{regex}")
    end

    def remove_excluded_element(contextname, description)
      @client.get("/JSON/ajaxSpider/action/removeExcludedElement/?contextName=#{contextname}&description=#{description}")
    end

    def scan(url, inscope = '', contextname = '', subtreeonly = '')
      @client.get("/JSON/ajaxSpider/action/scan/?url=#{url}&inScope=#{inscope}&contextName=#{contextname}&subtreeOnly=#{subtreeonly}")
    end

    def scan_as_user(contextname, username, url, subtreeonly = '')
      @client.get("/JSON/ajaxSpider/action/scanAsUser/?contextName=#{contextname}&userName=#{username}&url=#{url}&subtreeOnly=#{subtreeonly}")
    end

    def set_enabled_allowed_resource(regex, enabled = '')
      @client.get("/JSON/ajaxSpider/action/setEnabledAllowedResource/?regex=#{regex}&enabled=#{enabled}")
    end

    def set_option_browser_id(string)
      @client.get("/JSON/ajaxSpider/action/setOptionBrowserId/?String=#{string}")
    end

    def set_option_click_default_elems(boolean)
      @client.get("/JSON/ajaxSpider/action/setOptionClickDefaultElems/?Boolean=#{boolean}")
    end

    def set_option_click_elems_once(boolean)
      @client.get("/JSON/ajaxSpider/action/setOptionClickElemsOnce/?Boolean=#{boolean}")
    end

    def set_option_event_wait(integer)
      @client.get("/JSON/ajaxSpider/action/setOptionEventWait/?Integer=#{integer}")
    end

    def set_option_max_crawl_depth(integer)
      @client.get("/JSON/ajaxSpider/action/setOptionMaxCrawlDepth/?Integer=#{integer}")
    end

    def set_option_max_crawl_states(integer)
      @client.get("/JSON/ajaxSpider/action/setOptionMaxCrawlStates/?Integer=#{integer}")
    end

    def set_option_max_duration(integer)
      @client.get("/JSON/ajaxSpider/action/setOptionMaxDuration/?Integer=#{integer}")
    end

    def set_option_number_of_browsers(integer)
      @client.get("/JSON/ajaxSpider/action/setOptionNumberOfBrowsers/?Integer=#{integer}")
    end

    def set_option_random_inputs(boolean)
      @client.get("/JSON/ajaxSpider/action/setOptionRandomInputs/?Boolean=#{boolean}")
    end

    def set_option_reload_wait(integer)
      @client.get("/JSON/ajaxSpider/action/setOptionReloadWait/?Integer=#{integer}")
    end

    def stop
      @client.get('/JSON/ajaxSpider/action/stop/')
    end
  end
end
