# frozen_string_literal: true

class ZAPv2 < ZAP
  class Alert
    def initialize(client)
      @client = client
    end

    def alert(_id)
      @client.get('/JSON/alert/view/alert/')
    end

    def alert_counts_by_risk(url = '', recurse = '')
      @client.get("/JSON/alert/view/alertCountsByRisk/?url=#{url}&recurse=#{recurse}")
    end

    def alerts(baseurl = '', start = '', count = '', riskid = '', contextname = '')
      @client.get("/JSON/alert/view/alerts/?baseurl=#{baseurl}&start=#{start}&count=#{count}&riskId=#{riskid}&contextName=#{contextname}")
    end

    def alerts_by_risk(url = '', recurse = '')
      @client.get("/JSON/alert/view/alertsByRisk/?url=#{url}&recurse=#{recurse}")
    end

    def alerts_summary(baseurl = '')
      @client.get("/JSON/alert/view/alertsSummary/?baseurl=#{baseurl}")
    end

    def number_of_alerts(baseurl = '', riskid = '')
      @client.get("/JSON/alert/view/numberOfAlerts/?baseurl=#{baseurl}&riskId=#{riskid}")
    end

    def add_alert(messageid, name, riskid, confidenceid, description, param, attack, otherinfo, solution, references, evidence, cweid, wascid)
      @client.get("/JSON/alert/action/addAlert/?messageId=#{messageid}&name=#{name}&riskId=#{riskid}&confidenceId=#{confidenceid}&description=#{description}&param=#{param}&attack=#{attack}&otherInfo=#{otherinfo}&solution=#{solution}&references=#{references}&evidence=#{evidence}&cweId=#{cweid}&wascId=#{wascid}")
    end

    def delete_alert(id)
      @client.get("/JSON/alert/action/deleteAlert/?id=#{id}")
    end

    def delete_alerts(contextname, baseurl, riskid)
      @client.get("/JSON/alert/action/deleteAlerts/?contextName=#{contextname}&baseurl=#{baseurl}&riskId=#{riskid}")
    end

    def delete_all_alerts
      @client.get('/JSON/alert/action/deleteAllAlerts/')
    end

    def update_alert(id, name, riskid, confidenceid, description, param, attack, otherinfo, solution, references, evidence, cweid, wascid)
      @client.get("/JSON/alert/action/updateAlert/?id=#{id}&name=#{name}&riskId=#{riskid}&confidenceId=#{confidenceid}&description=#{description}&param=#{param}&attack=#{attack}&otherInfo=#{otherinfo}&solution=#{solution}&references=#{references}&evidence=#{evidence}&cweId=#{cweid}&wascId=#{wascid}")
    end

    def update_alerts_confidence(ids, confidenceid)
      @client.get("/JSON/alert/action/updateAlertsConfidence/?ids=#{ids}&confidenceId=#{confidenceid}")
    end

    def update_alerts_risk(ids, riskid)
      @client.get("/JSON/alert/action/updateAlertsRisk/?ids=#{ids}&riskId=#{riskid}")
    end
  end
end
