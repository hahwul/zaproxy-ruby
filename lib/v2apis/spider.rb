# frozen_string_literal: true

class ZAPv2 < ZAP
  class Spider
    def initialize(client)
      @client = client
    end

    def added_nodes(scan_id)
      @client.get("/JSON/spider/view/addedNodes/?scanId=#{scan_id}")
    end

    def all_urls
      @client.get('/JSON/spider/view/allUrls/')
    end

    def domains_always_in_scope
      @client.get('/JSON/spider/view/domainsAlwaysInScope/')
    end

    def excluded_from_scan
      @client.get('/JSON/spider/view/excludedFromScan/')
    end

    def full_results(scan_id)
      @client.get("/JSON/spider/view/fullResults/?scanId=#{scan_id}")
    end

    def option_accept_cookies
      @client.get('/JSON/spider/view/optionAcceptCookies/')
    end

    def option_domains_always_in_scope
      @client.get('/JSON/spider/view/optionDomainsAlwaysInScope/')
    end

    def option_domains_always_in_scope_enabled
      @client.get('/JSON/spider/view/optionDomainsAlwaysInScopeEnabled/')
    end

    def option_handle_odata_parameters_visited
      @client.get('/JSON/spider/view/optionHandleODataParametersVisited/')
    end

    def option_handle_parameters
      @client.get('/JSON/spider/view/optionHandleParameters/')
    end

    def option_max_children
      @client.get('/JSON/spider/view/optionMaxChildren/')
    end

    def option_max_depth
      @client.get('/JSON/spider/view/optionMaxDepth/')
    end

    def option_max_duration
      @client.get('/JSON/spider/view/optionMaxDuration/')
    end

    def option_max_parse_size_bytes
      @client.get('/JSON/spider/view/optionMaxParseSizeBytes/')
    end

    def option_max_scans_in_ui
      @client.get('/JSON/spider/view/optionMaxScansInUI/')
    end

    def option_parse_comments
      @client.get('/JSON/spider/view/optionParseComments/')
    end

    def option_parse_ds_store
      @client.get('/JSON/spider/view/optionParseDsStore/')
    end

    def option_parse_git
      @client.get('/JSON/spider/view/optionParseGit/')
    end

    def option_parse_robots_txt
      @client.get('/JSON/spider/view/optionParseRobotsTxt/')
    end

    def option_parse_svn_entries
      @client.get('/JSON/spider/view/optionParseSVNEntries/')
    end

    def option_parse_sitemap_xml
      @client.get('/JSON/spider/view/optionParseSitemapXml/')
    end

    def option_post_form
      @client.get('/JSON/spider/view/optionPostForm/')
    end

    def option_process_form
      @client.get('/JSON/spider/view/optionProcessForm/')
    end

    def option_request_wait_time
      @client.get('/JSON/spider/view/optionRequestWaitTime/')
    end

    def option_send_referer_header
      @client.get('/JSON/spider/view/optionSendRefererHeader/')
    end

    def option_show_advanced_dialog
      @client.get('/JSON/spider/view/optionShowAdvancedDialog/')
    end

    def option_skip_url_string
      @client.get('/JSON/spider/view/optionSkipURLString/')
    end

    def option_thread_count
      @client.get('/JSON/spider/view/optionThreadCount/')
    end

    def option_user_agent
      @client.get('/JSON/spider/view/optionUserAgent/')
    end

    def results(scan_id)
      @client.get("/JSON/spider/view/results/?scanId=#{scan_id}")
    end

    def scans
      @client.get('/JSON/spider/view/scans/')
    end

    def status(scan_id)
      @client.get("/JSON/spider/view/status/?scanId=#{scan_id}")
    end

    def add_domain_always_in_scope(value, is_regex, is_enabled)
      @client.get("/JSON/spider/action/addDomainAlwaysInScope/?value=#{value}&isRegex=#{is_regex}&isEnabled=#{is_enabled}")
    end

    def clear_excluded_from_scan
      @client.get('/JSON/spider/action/clearExcludedFromScan/')
    end

    def disable_all_domains_always_in_scope
      @client.get('/JSON/spider/action/disableAllDomainsAlwaysInScope/')
    end

    def enable_all_domains_always_in_scope
      @client.get('/JSON/spider/action/enableAllDomainsAlwaysInScope/')
    end

    def exclude_from_scan(regex)
      @client.get("/JSON/spider/action/excludeFromScan/?regex=#{regex}")
    end

    def modify_domain_always_in_scope(index, value, is_regex, is_enabled)
      @client.get("/JSON/spider/action/modifyDomainAlwaysInScope/?idx=#{index}&value=#{value}&isRegex=#{is_regex}&isEnabled=#{is_enabled}")
    end

    def pause(scan_id)
      @client.get("/JSON/spider/action/pause/?scanId=#{scan_id}")
    end

    def pause_all_scans
      @client.get('/JSON/spider/action/pauseAllScans/')
    end

    def remove_all_scans
      @client.get('/JSON/spider/action/removeAllScans/')
    end

    def remove_domain_always_in_scope(index)
      @client.get("/JSON/spider/action/removeDomainAlwaysInScope/?idx=#{index}")
    end

    def remove_scan(scan_id)
      @client.get("/JSON/spider/action/removeScan/?scanId=#{scan_id}")
    end

    def resume(scan_id)
      @client.get("/JSON/spider/action/resume/?scanId=#{scan_id}")
    end

    def resume_all_scans
      @client.get('/JSON/spider/action/resumeAllScans/')
    end

    def scan(url, max_children, recurse, context_name, subtree_only)
      @client.get("/JSON/spider/action/scan/?url=#{url}&maxChildren=#{max_children}&recurse=#{recurse}&contextName=#{context_name}&subtreeOnly=#{subtree_only}")
    end

    def scan_as_user(context_id, user_id, url, max_children, recurse, subtree_only)
      @client.get("/JSON/spider/action/scanAsUser/?contextId=#{context_id}&userId=#{user_id}&url=#{url}&maxChildren=#{max_children}&recurse=#{recurse}&subtreeOnly=#{subtree_only}")
    end

    def set_option_accept_cookies(boolean)
      @client.get("/JSON/spider/action/setOptionAcceptCookies/?Boolean=#{boolean}")
    end

    def set_option_handle_odata_parameters_visited(boolean)
      @client.get("/JSON/spider/action/setOptionHandleODataParametersVisited/?Boolean=#{boolean}")
    end

    def set_option_handle_parameters(string)
      @client.get("/JSON/spider/action/setOptionHandleParameters/?String=#{string}")
    end

    def set_option_max_children(integer)
      @client.get("/JSON/spider/action/setOptionMaxChildren/?Integer=#{integer}")
    end

    def set_option_max_depth(integer)
      @client.get("/JSON/spider/action/setOptionMaxDepth/?Integer=#{integer}")
    end

    def set_option_max_duration(integer)
      @client.get("/JSON/spider/action/setOptionMaxDuration/?Integer=#{integer}")
    end

    def set_option_max_parse_size_bytes(integer)
      @client.get("/JSON/spider/action/setOptionMaxParseSizeBytes/?Integer=#{integer}")
    end

    def set_option_max_scans_in_ui(integer)
      @client.get("/JSON/spider/action/setOptionMaxScansInUI/?Integer=#{integer}")
    end

    def set_option_parse_comments(boolean)
      @client.get("/JSON/spider/action/setOptionParseComments/?Boolean=#{boolean}")
    end

    def set_option_parse_ds_store(boolean)
      @client.get("/JSON/spider/action/setOptionParseDsStore/?Boolean=#{boolean}")
    end

    def set_option_parse_git(boolean)
      @client.get("/JSON/spider/action/setOptionParseGit/?Boolean=#{boolean}")
    end

    def set_option_parse_robots_txt(boolean)
      @client.get("/JSON/spider/action/setOptionParseRobotsTxt/?Boolean=#{boolean}")
    end

    def set_option_parse_svn_entries(boolean)
      @client.get("/JSON/spider/action/setOptionParseSVNEntries/?Boolean=#{boolean}")
    end

    def set_option_parse_sitemap_xml(boolean)
      @client.get("/JSON/spider/action/setOptionParseSitemapXml/?Boolean=#{boolean}")
    end

    def set_option_post_form(boolean)
      @client.get("/JSON/spider/action/setOptionPostForm/?Boolean=#{boolean}")
    end

    def set_option_process_form(boolean)
      @client.get("/JSON/spider/action/setOptionProcessForm/?Boolean=#{boolean}")
    end

    def set_option_request_wait_time(integer)
      @client.get("/JSON/spider/action/setOptionRequestWaitTime/?Integer=#{integer}")
    end

    def set_option_send_referer_header(boolean)
      @client.get("/JSON/spider/action/setOptionSendRefererHeader/?Boolean=#{boolean}")
    end

    def set_option_show_advanced_dialog(boolean)
      @client.get("/JSON/spider/action/setOptionShowAdvancedDialog/?Boolean=#{boolean}")
    end

    def set_option_skip_url_string(string)
      @client.get("/JSON/spider/action/setOptionSkipURLString/?String=#{string}")
    end

    def set_option_thread_count(integer)
      @client.get("/JSON/spider/action/setOptionThreadCount/?Integer=#{integer}")
    end

    def set_option_user_agent(string)
      @client.get("/JSON/spider/action/setOptionUserAgent/?String=#{string}")
    end

    def stop(scan_id)
      @client.get("/JSON/spider/action/stop/?scanId=#{scan_id}")
    end

    def stop_all_scans
      @client.get('/JSON/spider/action/stopAllScans/')
    end
  end
end
