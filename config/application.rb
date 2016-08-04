require_relative 'boot'

require "rails"

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"

Bundler.require(*Rails.groups)

module Handle
  class Application < Rails::Application
    # config.api_only = true
    config.time_zone = 'Tokyo'

    config.action_dispatch.default_headers = {
      'Access-Control-Allow-Credentials' => 'true',
      'Access-Control-Allow-Origin' => 'http://localhost:8000',
      'Access-Control-Request-Method' => '*'
    }
  end
end
