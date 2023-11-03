# frozen_string_literal: true

class ZAPv2 < ZAP
  class Automation
    def initialize(client)
      @client = client
    end

    def plan_progress(planid)
      @client.get("/JSON/automation/view/planProgress/?planId=#{planid}")
    end

    def end_delay_job
      @client.get('/JSON/automation/action/endDelayJob/')
    end

    def run_plan(filepath)
      @client.get("/JSON/automation/action/runPlan/?filePath=#{filepath}")
    end
  end
end
