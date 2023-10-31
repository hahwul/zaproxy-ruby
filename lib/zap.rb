# frozen_string_literal: true

require 'net/http'

class ZAP
  API_KEY_DEFAULT = ''

  def initialize(endpoint: 'http://localhost:8080', apikey: API_KEY_DEFAULT)
    @endpoint = endpoint
    @api = API.new(endpoint, apikey)
  end

  attr_reader :api

  class API
    def initialize(endpoint, apikey)
      @url = URI.parse(endpoint)
      @http = Net::HTTP.new(@url.host, @url.port)
      @apikey = apikey
    end

    def get(path)
      request = build_request(Net::HTTP::Get, path)
      send_request(request)
    end

    def post(path, data)
      request = build_request(Net::HTTP::Post, path)
      request.set_form_data(data)
      send_request(request)
    end

    def delete(path)
      request = build_request(Net::HTTP::Delete, path)
      send_request(request)
    end

    def put(path, data)
      request = build_request(Net::HTTP::Put, path)
      request.set_form_data(data)
      send_request(request)
    end

    private

    def build_request(request_type, path)
      request = request_type.new(path)
      request['X-ZAP-API-Key'] = @apikey unless @apikey.empty?
      request
    end

    def send_request(request)
      @http.request(request)
    end
  end
end
