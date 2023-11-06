# frozen_string_literal: true

require './lib/zap/zapv2'

describe ZAPv2 do
  it 'initialize default' do
    ZAPv2.new
  end

  it 'initialize with endpoint' do
    ZAPv2.new(endpoint: 'http://localhost:8080')
  end

  it 'initialize with endpoint and apikey' do
    ZAPv2.new(endpoint: 'http://localhost:8080', apikey: '1234567890')
  end
end
