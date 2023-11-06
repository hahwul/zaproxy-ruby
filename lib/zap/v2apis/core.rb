# frozen_string_literal: true

class ZAPv2 < ZAP
  class Core
    def initialize(client)
      @client = client
    end

    def alert(id)
      @client.get("/JSON/core/view/alert/?id=#{id}")
    end

    def alerts(baseurl, start, count, riskid)
      @client.get("/JSON/core/view/alerts/?baseurl=#{baseurl}&start=#{start}&count=#{count}&riskid=#{riskid}")
    end

    def alerts_summary(baseurl)
      @client.get("/JSON/core/view/alertsSummary/?baseurl=#{baseurl}")
    end

    def child_nodes(url)
      @client.get("/JSON/core/view/childNodes/?url=#{url}")
    end

    def excluded_from_proxy
      @client.get('/JSON/core/view/excludedFromProxy/')
    end

    def home_directory
      @client.get('/JSON/core/view/homeDirectory/')
    end

    def hosts
      @client.get('/JSON/core/view/hosts/')
    end

    def message(id)
      @client.get("/JSON/core/view/message/?id=#{id}")
    end

    def messages(baseurl, start, count)
      @client.get("/JSON/core/view/messages/?baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def messages_by_id(ids)
      @client.get("/JSON/core/view/messagesById/?ids=#{ids}")
    end

    def mode
      @client.get('/JSON/core/view/mode/')
    end

    def number_of_alerts(baseurl, riskid)
      @client.get("/JSON/core/view/numberOfAlerts/?baseurl=#{baseurl}&riskid=#{riskid}")
    end

    def number_of_messages(baseurl)
      @client.get("/JSON/core/view/numberOfMessages/?baseurl=#{baseurl}")
    end

    def option_alert_overrides_file_path
      @client.get('/JSON/core/view/optionAlertOverridesFilePath/')
    end

    def option_default_user_agent
      @client.get('/JSON/core/view/optionDefaultUserAgent/')
    end

    def option_dns_ttl_successful_queries
      @client.get('/JSON/core/view/optionDnsTtlSuccessfulQueries/')
    end

    def option_http_state
      @client.get('/JSON/core/view/optionHttpState/')
    end

    def option_http_state_enabled
      @client.get('/JSON/core/view/optionHttpStateEnabled/')
    end

    def option_maximum_alert_instances
      @client.get('/JSON/core/view/optionMaximumAlertInstances/')
    end

    def option_merge_related_alerts
      @client.get('/JSON/core/view/optionMergeRelatedAlerts/')
    end

    def option_proxy_chain_name
      @client.get('/JSON/core/view/optionProxyChainName/')
    end

    def option_proxy_chain_password
      @client.get('/JSON/core/view/optionProxyChainPassword/')
    end

    def option_proxy_chain_port
      @client.get('/JSON/core/view/optionProxyChainPort/')
    end

    def option_proxy_chain_prompt
      @client.get('/JSON/core/view/optionProxyChainPrompt/')
    end

    def option_proxy_chain_realm
      @client.get('/JSON/core/view/optionProxyChainRealm/')
    end

    def option_proxy_chain_skip_name
      @client.get('/JSON/core/view/optionProxyChainSkipName/')
    end

    def option_proxy_chain_user_name
      @client.get('/JSON/core/view/optionProxyChainUserName/')
    end

    def option_proxy_excluded_domains
      @client.get('/JSON/core/view/optionProxyExcludedDomains/')
    end

    def option_proxy_excluded_domains_enabled
      @client.get('/JSON/core/view/optionProxyExcludedDomainsEnabled/')
    end

    def option_single_cookie_request_header
      @client.get('/JSON/core/view/optionSingleCookieRequestHeader/')
    end

    def option_timeout_in_secs
      @client.get('/JSON/core/view/optionTimeoutInSecs/')
    end

    def option_use_proxy_chain
      @client.get('/JSON/core/view/optionUseProxyChain/')
    end

    def option_use_proxy_chain_auth
      @client.get('/JSON/core/view/optionUseProxyChainAuth/')
    end

    def option_use_socks_proxy
      @client.get('/JSON/core/view/optionUseSocksProxy/')
    end

    def proxy_chain_excluded_domains
      @client.get('/JSON/core/view/proxyChainExcludedDomains/')
    end

    def session_location
      @client.get('/JSON/core/view/sessionLocation/')
    end

    def sites
      @client.get('/JSON/core/view/sites/')
    end

    def urls(baseurl)
      @client.get("/JSON/core/view/urls/?baseurl=#{baseurl}")
    end

    def version
      @client.get('/JSON/core/view/version/')
    end

    def zap_home_path
      @client.get('/JSON/core/view/zapHomePath/')
    end

    def access_url(url, followredirects)
      @client.get("/JSON/core/action/accessUrl/?url=#{url}&followRedirects=#{followredirects}")
    end

    def add_proxy_chain_excluded_domain(value, isregex, isenabled)
      @client.get("/JSON/core/action/addProxyChainExcludedDomain/?value=#{value}&isRegex=#{isregex}&isEnabled=#{isenabled}")
    end

    def clear_excluded_from_proxy
      @client.get('/JSON/core/action/clearExcludedFromProxy/')
    end

    def create_sbom_zip(filepath)
      @client.get("/JSON/core/action/createSbomZip/?filePath=#{filepath}")
    end

    def delete_alert(id)
      @client.get("/JSON/core/action/deleteAlert/?id=#{id}")
    end

    def delete_all_alerts
      @client.get('/JSON/core/action/deleteAllAlerts/')
    end

    def delete_site_node(url, method, postdata)
      @client.get("/JSON/core/action/deleteSiteNode/?url=#{url}&method=#{method}&postData=#{postdata}")
    end

    def disable_all_proxy_chain_excluded_domains
      @client.get('/JSON/core/action/disableAllProxyChainExcludedDomains/')
    end

    def disable_client_certificate
      @client.get('/JSON/core/action/disableClientCertificate/')
    end

    def enable_all_proxy_chain_excluded_domains
      @client.get('/JSON/core/action/enableAllProxyChainExcludedDomains/')
    end

    def enable_pkcs12_client_certificate(filepath, password, index)
      @client.get("/JSON/core/action/enablePKCS12ClientCertificate/?filePath=#{filepath}&password=#{password}&index=#{index}")
    end

    def exclude_from_proxy(regex)
      @client.get("/JSON/core/action/excludeFromProxy/?regex=#{regex}")
    end

    def generate_root_ca
      @client.get('/JSON/core/action/generateRootCA/')
    end

    def load_session(name)
      @client.get("/JSON/core/action/loadSession/?name=#{name}")
    end

    def modify_proxy_chain_excluded_domain(idx, value, isregex, isenabled)
      @client.get("/JSON/core/action/modifyProxyChainExcludedDomain/?idx=#{idx}&value=#{value}&isRegex=#{isregex}&isEnabled=#{isenabled}")
    end

    def new_session(name, overwrite)
      @client.get("/JSON/core/action/newSession/?name=#{name}&overwrite=#{overwrite}")
    end

    def remove_proxy_chain_excluded_domain(idx)
      @client.get("/JSON/core/action/removeProxyChainExcludedDomain/?idx=#{idx}")
    end

    def run_garbage_collection
      @client.get('/JSON/core/action/runGarbageCollection/')
    end

    def save_session(name, overwrite)
      @client.get("/JSON/core/action/saveSession/?name=#{name}&overwrite=#{overwrite}")
    end

    def send_request(request, followredirects)
      @client.get("/JSON/core/action/sendRequest/?request=#{request}&followRedirects=#{followredirects}")
    end

    def set_home_directory(dir)
      @client.get("/JSON/core/action/setHomeDirectory/?dir=#{dir}")
    end

    def set_mode(mode)
      @client.get("/JSON/core/action/setMode/?mode=#{mode}")
    end

    def set_option_alert_overrides_file_path(filepath)
      @client.get("/JSON/core/action/setOptionAlertOverridesFilePath/?filePath=#{filepath}")
    end

    def set_option_default_user_agent(string)
      @client.get("/JSON/core/action/setOptionDefaultUserAgent/?String=#{string}")
    end

    def set_option_dns_ttl_successful_queries(integer)
      @client.get("/JSON/core/action/setOptionDnsTtlSuccessfulQueries/?Integer=#{integer}")
    end

    def set_option_http_state_enabled(boolean)
      @client.get("/JSON/core/action/setOptionHttpStateEnabled/?Boolean=#{boolean}")
    end

    def set_option_maximum_alert_instances(numberofinstances)
      @client.get("/JSON/core/action/setOptionMaximumAlertInstances/?numberOfInstances=#{numberofinstances}")
    end

    def set_option_merge_related_alerts(enabled)
      @client.get("/JSON/core/action/setOptionMergeRelatedAlerts/?enabled=#{enabled}")
    end

    def set_option_proxy_chain_name(string)
      @client.get("/JSON/core/action/setOptionProxyChainName/?String=#{string}")
    end

    def set_option_proxy_chain_password(string)
      @client.get("/JSON/core/action/setOptionProxyChainPassword/?String=#{string}")
    end

    def set_option_proxy_chain_port(integer)
      @client.get("/JSON/core/action/setOptionProxyChainPort/?Integer=#{integer}")
    end

    def set_option_proxy_chain_prompt(boolean)
      @client.get("/JSON/core/action/setOptionProxyChainPrompt/?Boolean=#{boolean}")
    end

    def set_option_proxy_chain_realm(string)
      @client.get("/JSON/core/action/setOptionProxyChainRealm/?String=#{string}")
    end

    def set_option_proxy_chain_skip_name(string)
      @client.get("/JSON/core/action/setOptionProxyChainSkipName/?String=#{string}")
    end

    def set_option_proxy_chain_user_name(string)
      @client.get("/JSON/core/action/setOptionProxyChainUserName/?String=#{string}")
    end

    def set_option_single_cookie_request_header(boolean)
      @client.get("/JSON/core/action/setOptionSingleCookieRequestHeader/?Boolean=#{boolean}")
    end

    def set_option_timeout_in_secs(integer)
      @client.get("/JSON/core/action/setOptionTimeoutInSecs/?Integer=#{integer}")
    end

    def set_option_use_proxy_chain(boolean)
      @client.get("/JSON/core/action/setOptionUseProxyChain/?Boolean=#{boolean}")
    end

    def set_option_use_proxy_chain_auth(boolean)
      @client.get("/JSON/core/action/setOptionUseProxyChainAuth/?Boolean=#{boolean}")
    end

    def set_option_use_socks_proxy(boolean)
      @client.get("/JSON/core/action/setOptionUseSocksProxy/?Boolean=#{boolean}")
    end

    def shutdown
      @client.get('/JSON/core/action/shutdown/')
    end

    def snapshot_session(name, overwrite)
      @client.get("/JSON/core/action/snapshotSession/?name=#{name}&overwrite=#{overwrite}")
    end

    def file_download(filename)
      @client.get("/OTHER/core/other/fileDownload/?fileName=#{filename}")
    end

    def file_upload(filename, filecontents)
      @client.get("/OTHER/core/other/fileUpload/?fileName=#{filename}&fileContents=#{filecontents}")
    end

    def htmlreport
      @client.get('/OTHER/core/other/htmlreport/')
    end

    def jsonreport
      @client.get('/OTHER/core/other/jsonreport/')
    end

    def mdreport
      @client.get('/OTHER/core/other/mdreport/')
    end

    def message_har(id)
      @client.get("/OTHER/core/other/messageHar/?id=#{id}")
    end

    def messages_har(baseurl, start, count)
      @client.get("/OTHER/core/other/messagesHar/?baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def messages_har_by_id(ids)
      @client.get("/OTHER/core/other/messagesHarById/?ids=#{ids}")
    end

    def proxy_pac
      @client.get('/OTHER/core/other/proxy.pac/')
    end

    def rootcert
      @client.get('/OTHER/core/other/rootcert/')
    end

    def send_har_request(request, followredirects)
      @client.get("/OTHER/core/other/sendHarRequest/?request=#{request}&followRedirects=#{followredirects}")
    end

    def setproxy(proxy)
      @client.get("/OTHER/core/other/setproxy/?proxy=#{proxy}")
    end

    def xmlreport
      @client.get('/OTHER/core/other/xmlreport/')
    end
  end
end
