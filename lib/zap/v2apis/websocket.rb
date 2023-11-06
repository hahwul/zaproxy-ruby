# frozen_string_literal: true

class ZAPv2 < ZAP
  class Websocket
    def initialize(client)
      @client = client
    end

    def break_text_message
      @client.get('/JSON/websocket/view/breakTextMessage/')
    end

    def channels
      @client.get('/JSON/websocket/view/channels/')
    end

    def message(channelid, messageid)
      @client.get("/JSON/websocket/view/message/?channelId=#{channelid}&messageId=#{messageid}")
    end

    def messages(channelid, start, count, payloadpreviewlength)
      @client.get("/JSON/websocket/view/messages/?channelId=#{channelid}&start=#{start}&count=#{count}&payloadPreviewLength=#{payloadpreviewlength}")
    end

    def send_text_message(channelid, outgoing, message)
      @client.get("/JSON/websocket/action/sendTextMessage/?channelId=#{channelid}&outgoing=#{outgoing}&message=#{message}")
    end

    def set_break_text_message(message, outgoing)
      @client.get("/JSON/websocket/action/setBreakTextMessage/?message=#{message}&outgoing=#{outgoing}")
    end
  end
end
