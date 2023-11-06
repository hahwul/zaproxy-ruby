# frozen_string_literal: true

require './lib/zap/zap'

describe ZAP do
  it 'initialize default' do
    ZAP.new
  end

  it 'initialize with endpoint' do
    ZAP.new(endpoint: 'http://localhost:8080')
  end

  it 'initialize with endpoint and apikey' do
    ZAP.new(endpoint: 'http://localhost:8080', apikey: '1234567890')
  end
end
