# frozen_string_literal: true

# TODO: This should eventually be replaced by something like:
# rails g reporterr Error
namespace :reporterr do
  desc 'Run reporterr:install to generate the RError model'
  task install: :environment do
    require 'rails/generators'

    name = 'RError'
    attributes = %w[error:text severity context:text]
    sys_call = "#{name} "

    attributes.each do |attr|
      sys_call += "#{attr} "
    end

    # context will be serialized as a hash on the error model
    system("rails generate migration Create#{sys_call}")
  end
end
