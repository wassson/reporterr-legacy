# frozen_string_literal: true

require_relative "reporterr/railtie"
require_relative "reporterr/version"

# Entrypoint for ReportErr module
module ReportErr
  class Error < StandardError; end

  def self.hello
    puts "ReportERR!"
  end
end
