# frozen_string_literal: true

class ZAPv2 < ZAP
  class Break
    def initialize(client)
      @client = client
    end

    def http_message
      @client.get('/JSON/break/view/httpMessage/')
    end

    def is_break_all
      @client.get('/JSON/break/view/isBreakAll/')
    end

    def is_break_request
      @client.get('/JSON/break/view/isBreakRequest/')
    end

    def is_break_response
      @client.get('/JSON/break/view/isBreakResponse/')
    end

    def add_http_breakpoint(string, location, match, inverse, ignorecase)
      @client.get("/JSON/break/action/addHttpBreakpoint/?string=#{string}&location=#{location}&match=#{match}&inverse=#{inverse}&ignorecase=#{ignorecase}")
    end

    def break(type, state, scope)
      @client.get("/JSON/break/action/break/?type=#{type}&state=#{state}&scope=#{scope}")
    end

    def continue
      @client.get('/JSON/break/action/continue/')
    end

    def drop
      @client.get('/JSON/break/action/drop/')
    end

    def remove_http_breakpoint(string, location, match, inverse, ignorecase)
      @client.get("/JSON/break/action/removeHttpBreakpoint/?string=#{string}&location=#{location}&match=#{match}&inverse=#{inverse}&ignorecase=#{ignorecase}")
    end

    def set_http_message(httpheader, httpbody)
      @client.get("/JSON/break/action/setHttpMessage/?httpHeader=#{httpheader}&httpBody=#{httpbody}")
    end

    def step
      @client.get('/JSON/break/action/step/')
    end

    def wait_for_http_break(poll, keepalive)
      @client.get("/JSON/break/pconn/waitForHttpBreak/?poll=#{poll}&keepAlive=#{keepalive}")
    end
  end
end
