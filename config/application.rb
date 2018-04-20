require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bogeyman
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :'pt-BR'
    config.i18n.available_locales = :'pt-BR'
    #config.i18n.fallbacks = true

    #Sentry configurationi
    Raven.configure do |config|
      config.dsn = 'https://5f3c072437264ccda1598a0998624197:58bc4b474cdb47d0b887fda059c420be@sentry.io/1192724'
    end
  end
end
