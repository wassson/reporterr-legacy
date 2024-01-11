# frozen_string_literal: true

class MarketingController < ApplicationController
  # before_action :break_controller

  def index
    Rails.error.handle(StandardError, context: { ip_address: '192.168.1.1' }) do
      raise StandardError
    end
  end

  private

  def break_controller
    Rails.error.handle(StandardError) do
      raise StandardError
    end
  end
end
