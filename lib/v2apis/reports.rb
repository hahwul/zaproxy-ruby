# frozen_string_literal: true

class ZAPv2 < ZAP
  class Reports
    def initialize(client)
      @client = client
    end

    def template_details(template)
      @client.get("/JSON/reports/view/templateDetails/?template=#{template}")
    end

    def templates
      @client.get('/JSON/reports/view/templates/')
    end

    def generate(title, template, theme, description, contexts, sites, sections, included_confidences, included_risks, report_file_name, report_file_name_pattern, report_dir, display)
      @client.get("/JSON/reports/action/generate/?title=#{title}&template=#{template}&theme=#{theme}&description=#{description}&contexts=#{contexts}&sites=#{sites}&sections=#{sections}&includedConfidences=#{included_confidences}&includedRisks=#{included_risks}&reportFileName=#{report_file_name}&reportFileNamePattern=#{report_file_name_pattern}&reportDir=#{report_dir}&display=#{display}")
    end
  end
end
