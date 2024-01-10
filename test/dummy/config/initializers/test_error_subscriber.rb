# frozen_string_literal: true

# TODO: Create module to inherit from that contains logic
class TestErrorSubscriber
  PRIMITIVE_CONTEXT_KEYS = [:controller].freeze

  def report(error, handled:, severity:, context:, source: nil)
    context_keys = context.keys
    context_keys.each do |key|
      if PRIMITIVE_CONTEXT_KEYS.include?(key)
        # ContextBuilder.build(context: context[key])
      end
    end

    # controller = context[:controller]
    # request_context = {
    #   name: controller.class.to_s,
    #   method: controller.request.method,
    #   url: controller.request.url,
    #   action: controller.action_name
    #   # your logic here
    # }

    # context[:controller] = request_context
    TestError.create!(error: error, severity: severity, context: context)
  end
end

Rails.error.subscribe(TestErrorSubscriber.new)
