# frozen_string_literal: true

class ZAPv2 < ZAP
  class Search
    def initialize(client)
      @client = client
    end

    def messages_by_header_regex(regex, baseurl, start, count)
      @client.get("/JSON/search/view/messagesByHeaderRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def messages_by_request_regex(regex, baseurl, start, count)
      @client.get("/JSON/search/view/messagesByRequestRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def messages_by_response_regex(regex, baseurl, start, count)
      @client.get("/JSON/search/view/messagesByResponseRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def messages_by_url_regex(regex, baseurl, start, count)
      @client.get("/JSON/search/view/messagesByUrlRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def urls_by_header_regex(regex, baseurl, start, count)
      @client.get("/JSON/search/view/urlsByHeaderRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def urls_by_request_regex(regex, baseurl, start, count)
      @client.get("/JSON/search/view/urlsByRequestRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def urls_by_response_regex(regex, baseurl, start, count)
      @client.get("/JSON/search/view/urlsByResponseRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def urls_by_url_regex(regex, baseurl, start, count)
      @client.get("/JSON/search/view/urlsByUrlRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def har_by_header_regex(regex, baseurl, start, count)
      @client.get("/OTHER/search/other/harByHeaderRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def har_by_request_regex(regex, baseurl, start, count)
      @client.get("/OTHER/search/other/harByRequestRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def har_by_response_regex(regex, baseurl, start, count)
      @client.get("/OTHER/search/other/harByResponseRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end

    def har_by_url_regex(regex, baseurl, start, count)
      @client.get("/OTHER/search/other/harByUrlRegex/?regex=#{regex}&baseurl=#{baseurl}&start=#{start}&count=#{count}")
    end
  end
end
