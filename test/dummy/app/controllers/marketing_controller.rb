# frozen_string_literal: true

class MarketingController < ApplicationController
  def index
    Rails.error.handle(context: { user_id: 3 }, severity: :info) do
      puts 'Hello!'
      raise StandardError
    end
  end
end
