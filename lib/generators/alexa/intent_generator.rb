module Alexa
  class IntentGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    argument :class_name, type: :string
    argument :locale, type: :string

    desc "Generates a new intent handler and it's default view"


    def create_intent_handler
      template 'intent_handler.rb', "app/lib/alexa/intent_handlers/#{class_name.underscore}.rb"
    end

    def create_default_intent_views
      template 'view_default.erb', "app/views/alexa/#{locale}/intent_handlers/#{class_name.underscore}/default.ssml.erb"
    end
  end
end
