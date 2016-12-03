require_relative 'boot'

require 'rails/all'
require "action_view/railtie"
require "sprockets/railtie"
require 'sprockets/es6'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SharedContent
  class Application < Rails::Application

    # load environment_variables
    config.before_configuration do
      env_file = Rails.root.join("config", 'environment_variables.yml').to_s
      if File.exists?(env_file)
        YAML.load_file(env_file)[Rails.env].each do |key, value|
          ENV[key.to_s] = value
        end # end YAML.load_file
      end # end if File.exists?
    end # end config.before_configuration

  end
end
