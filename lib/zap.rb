# frozen_string_literal: true

# ZAP Class
class ZAP
  def initialize(endpoint: 'http://localhost:8080', apikey: '')
    @endpoint = endpoint
    @apikey = apikey
  end
end
