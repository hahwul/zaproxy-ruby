# frozen_string_literal: true

require_relative 'zap'
require_relative 'v2apis/access_control'
require_relative 'v2apis/acsrf'
require_relative 'v2apis/ajax_spider'
require_relative 'v2apis/alert'

class ZAPv2 < ZAP
  attr_reader :access_control, :acsrf, :ajax_spider, :alert

  def initialize(endpoint: 'http://localhost:8080', apikey: API_KEY_DEFAULT)
    super endpoint: endpoint, apikey: apikey

    @access_control = AccessControl.new @client
    @acsrf = Acsrf.new @client
    @ajax_spider = AjaxSpider.new @client
    @alert = Alert.new @client
  end
end
