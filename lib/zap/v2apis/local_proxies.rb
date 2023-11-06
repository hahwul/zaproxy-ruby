# frozen_string_literal: true

class ZAPv2 < ZAP
  class LocalProxies
    def initialize(client)
      @client = client
    end

    def additional_proxies
      @client.get('/JSON/localProxies/view/additionalProxies/')
    end

    def add_additional_proxy(address, port, behind_nat, always_decode_zip, remove_unsupported_encodings)
      @client.get("/JSON/localProxies/action/addAdditionalProxy/?address=#{address}&port=#{port}&behindNat=#{behind_nat}&alwaysDecodeZip=#{always_decode_zip}&removeUnsupportedEncodings=#{remove_unsupported_encodings}")
    end

    def remove_additional_proxy(address, port)
      @client.get("/JSON/localProxies/action/removeAdditionalProxy/?address=#{address}&port=#{port}")
    end
  end
end
