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
require_relative 'v2apis/http_sessions'
require_relative 'v2apis/hud'
require_relative 'v2apis/import_urls'
require_relative 'v2apis/keyboard'
require_relative 'v2apis/local_proxies'
require_relative 'v2apis/network'
require_relative 'v2apis/openapi'
require_relative 'v2apis/params'
require_relative 'v2apis/pnh'
require_relative 'v2apis/postman'
require_relative 'v2apis/pscan'
require_relative 'v2apis/quickstartlaunch'
require_relative 'v2apis/replacer'
require_relative 'v2apis/reports'
require_relative 'v2apis/reveal'
require_relative 'v2apis/retest'
require_relative 'v2apis/revisit'
require_relative 'v2apis/rule_config'
require_relative 'v2apis/script'
require_relative 'v2apis/search'
require_relative 'v2apis/selenium'
require_relative 'v2apis/session_management'
require_relative 'v2apis/soap'
require_relative 'v2apis/spider'
require_relative 'v2apis/stats'
require_relative 'v2apis/users'
require_relative 'v2apis/wappalyzer'
require_relative 'v2apis/websocket'

class ZAPv2 < ZAP
  attr_reader :access_control, :acsrf, :ajax_spider, :alert, :alert_filter, :ascan, :authentication, :authorization, :automation, :autoupdate, :break, :client, :context, :core, :exim, :forced_user, :graphql, :http_sessions, :hud, :import_urls, :keyboard, :local_proxies, :network, :openapi, :params, :pnh, :postman, :pscan, :quickstartlaunch, :replacer, :reports, :reveal, :retest, :revisit, :rule_config, :script, :search, :selenium, :session_management, :soap, :spider, :stats, :users, :wappalyzer, :websocket

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
    @http_sessions = HTTPSessions.new @api_client
    @hud = HUD.new @api_client
    @import_urls = ImportURLs.new @api_client
    @keyboard = Keyboard.new @api_client
    @local_proxies = LocalProxies.new @api_client
    @network = Network.new @api_client
    @openapi = OpenAPI.new @api_client
    @params = Params.new @api_client
    @pnh = PnH.new @api_client
    @postman = Postman.new @api_client
    @pscan = Pscan.new @api_client
    @quickstartlaunch = QuickStartLaunch.new @api_client
    @replacer = Replacer.new @api_client
    @reports = Reports.new @api_client
    @retest = Retest.new @api_client
    @reveal = Reveal.new @api_client
    @revisit = Revisit.new @api_client
    @rule_config = RuleConfig.new @api_client
    @script = Script.new @api_client
    @search = Search.new @api_client
    @selenium = Selenium.new @api_client
    @session_management = SessionManagement.new @api_client
    @soap = Soap.new @api_client
    @spider = Spider.new @api_client
    @stats = Stats.new @api_client
    @users = Users.new @api_client
    @wappalyzer = Wappalyzer.new @api_client
    @websocket = Websocket.new @api_client
  end
end
