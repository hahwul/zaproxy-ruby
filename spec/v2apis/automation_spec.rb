# frozen_string_literal: true

require './lib/zapv2'

describe ZAPv2 do
  it 'initialize' do
    instance = ZAPv2.new
    expect(instance.automation).not_to be nil
  end
end