# frozen_string_literal: true

require_relative 'zap'
require_relative 'v2apis/access_control'
require_relative 'v2apis/acsrf'
require_relative 'v2apis/ajax_spider'
require_relative 'v2apis/alert'
require_relative 'v2apis/alert_filter'
require_relative 'v2apis/ascan'
require_relative 'v2apis/authentication'
require_relative 'v2apis/authorization'
require_relative 'v2apis/automation'
require_relative 'v2apis/autoupdate'
require_relative 'v2apis/break'
require_relative 'v2apis/client'
require_relative 'v2apis/context'
require_relative 'v2apis/core'
require_relative 'v2apis/exim'
require_relative 'v2apis/forced_user'
require_relative 'v2apis/graphql'

class ZAPv2 < ZAP
  attr_reader :access_control, :acsrf, :ajax_spider, :alert, :alert_filter, :ascan, :authentication, :authorization, :automation, :autoupdate, :break, :client, :context, :core, :exim, :forced_user, :graphql

  def initialize(endpoint: 'http://localhost:8080', apikey: API_KEY_DEFAULT)
    super endpoint: endpoint, apikey: apikey

    @access_control = AccessControl.new @api_client
    @acsrf = Acsrf.new @api_client
    @ajax_spider = AjaxSpider.new @api_client
    @alert = Alert.new @api_client
    @alert_filter = AlertFilter.new @api_client
    @ascan = Ascan.new @api_client
    @authentication = Authentication.new @api_client
    @authorization = Authorization.new @api_client
    @automation = Automation.new @api_client
    @autoupdate = Autoupdate.new @api_client
    @break = Break.new @api_client
    @client = Client.new @api_client
    @context = Context.new @api_client
    @core = Core.new @api_client
    @exim = Exim.new @api_client
    @forced_user = ForcedUser.new @api_client
    @graphql = GraphQL.new @api_client
  end
end
