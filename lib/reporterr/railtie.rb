# frozen_string_literal: true

require 'rails/railtie'

module ReportErr
  # ReportErr rake tasks railtie
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load 'tasks/reporterr_tasks.rake'
    end
  end
end
