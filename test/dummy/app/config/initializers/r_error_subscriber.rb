class RErrorSubscriber
  def report(error, handled:, severity:, context:, source: nil)
    # MyErrorReportingService.report_error(error, context: context, handled: handled, level: severity)
    puts "Error Reporting Service"
  end
end
