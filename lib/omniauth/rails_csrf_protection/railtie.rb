require "omniauth"
require "omniauth/rails_csrf_protection/token_verifier"

module OmniAuth
  module RailsCsrfProtection
    class Railtie < Rails::Railtie
      initializer "omniauth-rails_csrf_protection.initialize" do
        OmniAuth.config.request_validation_phase = TokenVerifier.new
        OmniAuth.config.allowed_request_methods = [:get, :post]
        OmniAuth.config.silence_get_warning = true
      end
    end
  end
end
