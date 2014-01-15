# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Createlab::Application.config.secret_key_base = (Rails.env.production? or Rails.env.staging?) ? ENV['SECRET_TOKEN'] : "a"*50
#SETTINGS = YAML.load(IO.read(Rails.root.join("config", "settings.yml")))

#Createlab::Application.config.secret_key_base = SETTINGS['SECRET_TOKEN']