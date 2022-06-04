# Load the Rails application.
require_relative 'application'

secrets_env = File.join(Rails.root, 'config', 'secrets_env.rb')
load(secrets_env) if File.exist?(secrets_env)

# Initialize the Rails application.
Rails.application.initialize!
