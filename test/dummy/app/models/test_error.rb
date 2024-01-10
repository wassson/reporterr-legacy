class TestError < ApplicationRecord
  # serialize :context, Hash

  def break_error
    Rails.error.handle(StandardError) do
      puts 'Hello!'
      raise StandardError
    end
  end
end
