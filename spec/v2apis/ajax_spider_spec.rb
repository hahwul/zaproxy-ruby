# frozen_string_literal: true

require './lib/zap/zapv2'

describe ZAPv2 do
  it 'initialize' do
    instance = ZAPv2.new
    expect(instance.ajax_spider).not_to be nil
  end
end
