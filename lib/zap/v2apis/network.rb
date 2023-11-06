# frozen_string_literal: true

class ZAPv2 < ZAP
  class Network
    def initialize(client)
      @client = client
    end

    def get_aliases
      @client.get('/JSON/network/view/getAliases/')
    end

    def get_connection_timeout
      @client.get('/JSON/network/view/getConnectionTimeout/')
    end

    def get_default_user_agent
      @client.get('/JSON/network/view/getDefaultUserAgent/')
    end

    def get_dns_ttl_successful_queries
      @client.get('/JSON/network/view/getDnsTtlSuccessfulQueries/')
    end

    def get_http_proxy
      @client.get('/JSON/network/view/getHttpProxy/')
    end

    def get_http_proxy_exclusions
      @client.get('/JSON/network/view/getHttpProxyExclusions/')
    end

    def get_local_servers
      @client.get('/JSON/network/view/getLocalServers/')
    end

    def get_pass_throughs
      @client.get('/JSON/network/view/getPassThroughs/')
    end

    def get_rate_limit_rules
      @client.get('/JSON/network/view/getRateLimitRules/')
    end

    def get_root_ca_cert_validity
      @client.get('/JSON/network/view/getRootCaCertValidity/')
    end

    def get_server_cert_validity
      @client.get('/JSON/network/view/getServerCertValidity/')
    end

    def get_socks_proxy
      @client.get('/JSON/network/view/getSocksProxy/')
    end

    def is_http_proxy_auth_enabled
      @client.get('/JSON/network/view/isHttpProxyAuthEnabled/')
    end

    def is_http_proxy_enabled
      @client.get('/JSON/network/view/isHttpProxyEnabled/')
    end

    def is_socks_proxy_enabled
      @client.get('/JSON/network/view/isSocksProxyEnabled/')
    end

    def is_use_global_http_state
      @client.get('/JSON/network/view/isUseGlobalHttpState/')
    end

    def add_alias(name, enabled)
      @client.get("/JSON/network/action/addAlias/?name=#{name}&enabled=#{enabled}")
    end

    def add_http_proxy_exclusion(host, enabled)
      @client.get("/JSON/network/action/addHttpProxyExclusion/?host=#{host}&enabled=#{enabled}")
    end

    def add_local_server(address, port, api, proxy, behind_nat, decode_response, remove_accept_encoding)
      @client.get("/JSON/network/action/addLocalServer/?address=#{address}&port=#{port}&api=#{api}&proxy=#{proxy}&behindNat=#{behind_nat}&decodeResponse=#{decode_response}&removeAcceptEncoding=#{remove_accept_encoding}")
    end

    def add_pass_through(authority, enabled)
      @client.get("/JSON/network/action/addPassThrough/?authority=#{authority}&enabled=#{enabled}")
    end

    def add_pkcs12_client_certificate(file_path, password, index)
      @client.get("/JSON/network/action/addPkcs12ClientCertificate/?filePath=#{file_path}&password=#{password}&index=#{index}")
    end

    def add_rate_limit_rule(description, enabled, match_regex, match_string, requests_per_second, group_by)
      @client.get("/JSON/network/action/addRateLimitRule/?description=#{description}&enabled=#{enabled}&matchRegex=#{match_regex}&matchString=#{match_string}&requestsPerSecond=#{requests_per_second}&groupBy=#{group_by}")
    end

    def generate_root_ca_cert
      @client.get('/JSON/network/action/generateRootCaCert/')
    end

    def import_root_ca_cert(file_path)
      @client.get("/JSON/network/action/importRootCaCert/?filePath=#{file_path}")
    end

    def remove_alias(name)
      @client.get("/JSON/network/action/removeAlias/?name=#{name}")
    end

    def remove_http_proxy_exclusion(host)
      @client.get("/JSON/network/action/removeHttpProxyExclusion/?host=#{host}")
    end

    def remove_local_server(address, port)
      @client.get("/JSON/network/action/removeLocalServer/?address=#{address}&port=#{port}")
    end

    def remove_pass_through(authority)
      @client.get("/JSON/network/action/removePassThrough/?authority=#{authority}")
    end

    def remove_rate_limit_rule(description)
      @client.get("/JSON/network/action/removeRateLimitRule/?description=#{description}")
    end

    def set_alias_enabled(name, enabled)
      @client.get("/JSON/network/action/setAliasEnabled/?name=#{name}&enabled=#{enabled}")
    end

    def set_connection_timeout(timeout)
      @client.get("/JSON/network/action/setConnectionTimeout/?timeout=#{timeout}")
    end

    def set_default_user_agent(user_agent)
      @client.get("/JSON/network/action/setDefaultUserAgent/?userAgent=#{user_agent}")
    end

    def set_dns_ttl_successful_queries(ttl)
      @client.get("/JSON/network/action/setDnsTtlSuccessfulQueries/?ttl=#{ttl}")
    end

    def set_http_proxy(host, port, realm, username, password)
      @client.get("/JSON/network/action/setHttpProxy/?host=#{host}&port=#{port}&realm=#{realm}&username=#{username}&password=#{password}")
    end

    def set_http_proxy_auth_enabled(enabled)
      @client.get("/JSON/network/action/setHttpProxyAuthEnabled/?enabled=#{enabled}")
    end

    def set_http_proxy_enabled(enabled)
      @client.get("/JSON/network/action/setHttpProxyEnabled/?enabled=#{enabled}")
    end

    def set_http_proxy_exclusion_enabled(host, enabled)
      @client.get("/JSON/network/action/setHttpProxyExclusionEnabled/?host=#{host}&enabled=#{enabled}")
    end

    def set_pass_through_enabled(authority, enabled)
      @client.get("/JSON/network/action/setPassThroughEnabled/?authority=#{authority}&enabled=#{enabled}")
    end

    def set_rate_limit_rule_enabled(description, enabled)
      @client.get("/JSON/network/action/setRateLimitRuleEnabled/?description=#{description}&enabled=#{enabled}")
    end

    def set_root_ca_cert_validity(validity)
      @client.get("/JSON/network/action/setRootCaCertValidity/?validity=#{validity}")
    end

    def set_server_cert_validity(validity)
      @client.get("/JSON/network/action/setServerCertValidity/?validity=#{validity}")
    end

    def set_socks_proxy(host, port, version, use_dns, username, password)
      @client.get("/JSON/network/action/setSocksProxy/?host=#{host}&port=#{port}&version=#{version}&useDns=#{use_dns}&username=#{username}&password=#{password}")
    end

    def set_socks_proxy_enabled(enabled)
      @client.get("/JSON/network/action/setSocksProxyEnabled/?enabled=#{enabled}")
    end

    def set_use_client_certificate(use)
      @client.get("/JSON/network/action/setUseClientCertificate/?use=#{use}")
    end

    def set_use_global_http_state(use)
      @client.get("/JSON/network/action/setUseGlobalHttpState/?use=#{use}")
    end

    def proxy_pac
      @client.get('/OTHER/network/other/proxy.pac/')
    end

    def root_ca_cert
      @client.get('/OTHER/network/other/rootCaCert/')
    end

    def set_proxy(proxy)
      @client.get("/OTHER/network/other/setProxy/?proxy=#{proxy}")
    end
  end
end
