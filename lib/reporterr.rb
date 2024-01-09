# frozen_string_literal: true

require_relative 'reporterr/railtie'
require_relative 'reporterr/version'
require 'active_support/error_reporter'

# Entrypoint for ReportErr module
module ReportErr
  module HandlePatch
    def handle(*args)
      begin
        super # call the original method
      rescue StandardError => e
        # Handle error here
        puts "An error occurred: #{e.message}"
        # Any other code you want to run when the method raises an error
      end
      self
    end
  end

  def self.hello
    puts 'ReportERR!'
  end
end

ActiveSupport::ErrorReporter.prepend ReportErr::HandlePatch
