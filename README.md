# ReportErr

Catch, capture, and view errors within your Rails app via the Error Reporter API.

## Installation

Add the gem to your Gemfile with:

    gem 'reporterr', '~> 0.0.1`

## Usage

ReportErr utilizes the Rails Error Reporting API introduced in Rails 7.0

Running: 

    rails g reporterr MODEL

will create three files: a migration, a model, and a subscriber. For example,
running `rails g reporter ErrorEvent` will create `migrate/20240109221953_create_error_event.rb`, 
`models/error_event.rb`, and `config/initializers/error_event_subscriber.rb`.

The generated table will contain three string attributes: `error`, `severity`, and `context`. 
You'll notice that the model file serializes `context`. This is so that when errors are captured 
we can pass a hash to `context` and store the data properly. You can add to this table,
but removing the default attributes will break the gem.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ReportErr project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/reporterr/blob/main/CODE_OF_CONDUCT.md).
