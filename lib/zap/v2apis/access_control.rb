# frozen_string_literal: true

class ZAPv2 < ZAP
  class AccessControl
    def initialize(client)
      @client = client
    end

    def get_scan_progress(contextid)
      @client.get("/JSON/accessControl/view/getScanProgress/?contextId=#{contextid}")
    end

    def get_scan_status(contextid)
      @client.get("/JSON/accessControl/view/getScanStatus/?contextId=#{contextid}")
    end

    def scan(contextid, userid, scanasunauthuser = '', riasealert = '', alsertrisklevel = '')
      @client.get("/JSON/accessControl/action/scan/?contextId=#{contextid}&userId=#{userid}&scanAsUnAuthUser=#{scanasunauthuser}&raiseAlert=#{riasealert}&alertRiskLevel=#{alsertrisklevel}")
    end

    def write_html_report(contextid, filename)
      @client.get("/JSON/accessControl/action/writeHTMLreport/?contextId=#{contextid}&fileName=#{filename}")
    end
  end
end
