# frozen_string_literal: true

require_relative 'zap'
require_relative 'v2apis/access_control'

class ZAPv2 < ZAP
  attr_reader :access_control

  def initialize(endpoint: 'http://localhost:8080', apikey: API_KEY_DEFAULT)
    super endpoint: endpoint, apikey: apikey

    @access_control = AccessControl.new @client
  end
end
