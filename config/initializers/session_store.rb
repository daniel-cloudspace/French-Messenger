# Be sure to restart your server when you modify this file.

FrenchMessenger::Application.config.session_store :cookie_store, :key => '_french_messenger_session'

ActionController::Base.session = {
  :key         => '_tropo_session',
  :secret      => '059032e74acd854eafe2a77ce2b4ca5886eb0f56524db2be6fcd096246f64d32a9892aea9efa047a9eb46ea5'
}


# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# FrenchMessenger::Application.config.session_store :active_record_store
