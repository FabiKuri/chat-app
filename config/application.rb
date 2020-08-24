require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.i18n.defaulst_locale = :ja 
    config.time_zone = 'Tokyo' 
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_frameword false
   end
  end
end
