# frozen_string_literal: true

class ZAPv2 < ZAP
  class Context
    def initialize(client)
      @client = client
    end

    def context(contextname)
      @client.get("/JSON/context/view/context/?contextName=#{contextname}")
    end

    def context_list
      @client.get('/JSON/context/view/contextList/')
    end

    def exclude_regexs(contextname)
      @client.get("/JSON/context/view/excludeRegexs/?contextName=#{contextname}")
    end

    def excluded_technology_list(contextname)
      @client.get("/JSON/context/view/excludedTechnologyList/?contextName=#{contextname}")
    end

    def include_regexs(contextname)
      @client.get("/JSON/context/view/includeRegexs/?contextName=#{contextname}")
    end

    def included_technology_list(contextname)
      @client.get("/JSON/context/view/includedTechnologyList/?contextName=#{contextname}")
    end

    def technology_list
      @client.get('/JSON/context/view/technologyList/')
    end

    def urls(contextname)
      @client.get("/JSON/context/view/urls/?contextName=#{contextname}")
    end

    def exclude_all_context_technologies(contextname)
      @client.get("/JSON/context/action/excludeAllContextTechnologies/?contextName=#{contextname}")
    end

    def exclude_context_technologies(contextname, technologynames)
      @client.get("/JSON/context/action/excludeContextTechnologies/?contextName=#{contextname}&technologyNames=#{technologynames}")
    end

    def exclude_from_context(contextname, regex)
      @client.get("/JSON/context/action/excludeFromContext/?contextName=#{contextname}&regex=#{regex}")
    end

    def export_context(contextname, contextfile)
      @client.get("/JSON/context/action/exportContext/?contextName=#{contextname}&contextFile=#{contextfile}")
    end

    def import_context(contextfile)
      @client.get("/JSON/context/action/importContext/?contextFile=#{contextfile}")
    end

    def include_all_context_technologies(contextname)
      @client.get("/JSON/context/action/includeAllContextTechnologies/?contextName=#{contextname}")
    end

    def include_context_technologies(contextname, technologynames)
      @client.get("/JSON/context/action/includeContextTechnologies/?contextName=#{contextname}&technologyNames=#{technologynames}")
    end

    def include_in_context(contextname, regex)
      @client.get("/JSON/context/action/includeInContext/?contextName=#{contextname}&regex=#{regex}")
    end

    def new_context(contextname)
      @client.get("/JSON/context/action/newContext/?contextName=#{contextname}")
    end

    def remove_context(contextname)
      @client.get("/JSON/context/action/removeContext/?contextName=#{contextname}")
    end

    def set_context_checking_strategy(contextname, checkingstrategy, pollurl, polldata, pollheaders, pollfrequency, pollfrequencyunits)
      @client.get("/JSON/context/action/setContextCheckingStrategy/?contextName=#{contextname}&checkingStrategy=#{checkingstrategy}&pollUrl=#{pollurl}&pollData=#{polldata}&pollHeaders=#{pollheaders}&pollFrequency=#{pollfrequency}&pollFrequencyUnits=#{pollfrequencyunits}")
    end

    def set_context_in_scope(contextname, booleaninscope)
      @client.get("/JSON/context/action/setContextInScope/?contextName=#{contextname}&booleanInScope=#{booleaninscope}")
    end

    def set_context_regexs(contextname, incregexs, excregexs)
      @client.get("/JSON/context/action/setContextRegexs/?contextName=#{contextname}&incRegexs=#{incregexs}&excRegexs=#{excregexs}")
    end
  end
end
