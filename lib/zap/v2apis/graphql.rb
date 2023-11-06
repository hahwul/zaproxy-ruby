# frozen_string_literal: true

class ZAPv2 < ZAP
  class GraphQL
    def initialize(client)
      @client = client
    end

    def option_args_type
      @client.get('/JSON/graphql/view/optionArgsType/')
    end

    def option_lenient_max_query_depth_enabled
      @client.get('/JSON/graphql/view/optionLenientMaxQueryDepthEnabled/')
    end

    def option_max_additional_query_depth
      @client.get('/JSON/graphql/view/optionMaxAdditionalQueryDepth/')
    end

    def option_max_args_depth
      @client.get('/JSON/graphql/view/optionMaxArgsDepth/')
    end

    def option_max_query_depth
      @client.get('/JSON/graphql/view/optionMaxQueryDepth/')
    end

    def option_optional_args_enabled
      @client.get('/JSON/graphql/view/optionOptionalArgsEnabled/')
    end

    def option_query_gen_enabled
      @client.get('/JSON/graphql/view/optionQueryGenEnabled/')
    end

    def option_query_split_type
      @client.get('/JSON/graphql/view/optionQuerySplitType/')
    end

    def option_request_method
      @client.get('/JSON/graphql/view/optionRequestMethod/')
    end

    def import_file(endurl, file)
      @client.get("/JSON/graphql/action/importFile/?endurl=#{endurl}&file=#{file}")
    end

    def import_url(endurl, url)
      @client.get("/JSON/graphql/action/importUrl/?endurl=#{endurl}&url=#{url}")
    end

    def set_option_args_type(string)
      @client.get("/JSON/graphql/action/setOptionArgsType/?String=#{string}")
    end

    def set_option_lenient_max_query_depth_enabled(boolean)
      @client.get("/JSON/graphql/action/setOptionLenientMaxQueryDepthEnabled/?Boolean=#{boolean}")
    end

    def set_option_max_additional_query_depth(integer)
      @client.get("/JSON/graphql/action/setOptionMaxAdditionalQueryDepth/?Integer=#{integer}")
    end

    def set_option_max_args_depth(integer)
      @client.get("/JSON/graphql/action/setOptionMaxArgsDepth/?Integer=#{integer}")
    end

    def set_option_max_query_depth(integer)
      @client.get("/JSON/graphql/action/setOptionMaxQueryDepth/?Integer=#{integer}")
    end

    def set_option_optional_args_enabled(boolean)
      @client.get("/JSON/graphql/action/setOptionOptionalArgsEnabled/?Boolean=#{boolean}")
    end

    def set_option_query_gen_enabled(boolean)
      @client.get("/JSON/graphql/action/setOptionQueryGenEnabled/?Boolean=#{boolean}")
    end

    def set_option_query_split_type(string)
      @client.get("/JSON/graphql/action/setOptionQuerySplitType/?String=#{string}")
    end

    def set_option_request_method(string)
      @client.get("/JSON/graphql/action/setOptionRequestMethod/?String=#{string}")
    end
  end
end
