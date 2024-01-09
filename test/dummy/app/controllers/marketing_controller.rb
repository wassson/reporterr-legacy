# frozen_string_literal: true

class MarketingController < ApplicationController
  def index
    Rails.error.handle(StandardError) do
      puts "Hello!"
      raise "Fake error"
    end
  end
end
