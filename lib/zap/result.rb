# frozen_string_literal: true

require 'json'

class Result
  attr_accessor :success, :message, :object

  def initialize(success, message)
    @success = success
    @message = message
    @object = JSON.parse(message) if message.is_a?(String)
  end
end
