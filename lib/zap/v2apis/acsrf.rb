# frozen_string_literal: true

class ZAPv2 < ZAP
  class Acsrf
    def initialize(client)
      @client = client
    end

    def option_partial_matching_enabled
      @client.get('/JSON/acsrf/view/optionPartialMatchingEnabled/')
    end

    def option_tokens_names
      @client.get('/JSON/acsrf/view/optionTokensNames/')
    end

    def add_option_token(string)
      @client.get("/JSON/acsrf/action/addOptionToken/?String=#{string}")
    end

    def remove_option_token(string)
      @client.get("/JSON/acsrf/action/removeOptionToken/?String=#{string}")
    end

    def set_option_partial_matching_enabled(boolean)
      @client.get("/JSON/acsrf/action/setOptionPartialMatchingEnabled/?Boolean=#{boolean}")
    end

    def gen_form(href_id, action_url)
      @client.get("/JSON/acsrf/other/genForm/?hrefId=#{href_id}&actionUrl=#{action_url}")
    end
  end
end
