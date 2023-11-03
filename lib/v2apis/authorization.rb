# frozen_string_literal: true

class ZAPv2 < ZAP
  class Authorization
    def initialize(client)
      @client = client
    end

    def get_authorization_detection_method(contextid)
      @client.get('/JSON/authorization/view/getAuthorizationDetectionMethod/', contextid: contextid)
    end

    def set_basic_authorization_detection_method(contextid, headerregex, bodyregex, statuscode, logicaloperator)
      @client.get('/JSON/authorization/action/setBasicAuthorizationDetectionMethod/', contextid: contextid, headerRegex: headerregex, bodyRegex: bodyregex, statusCode: statuscode, logicalOperator: logicaloperator)
    end
  end
end
