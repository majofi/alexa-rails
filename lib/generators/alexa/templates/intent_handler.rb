module Alexa
  module IntentHandlers
    class <%= class_name %> < Alexa::IntentHandlers::Base
      def handle

        response.keep_listening!
        response # intent handlers should always return the +response+ object
      end
    end
  end
end
