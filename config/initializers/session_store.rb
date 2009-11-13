# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_euvendomicrosol_session',
  :secret      => '9b4c5d84eb7ac6d0c80c961325591353a3f26d112be6bd15fd2ab2b45ffe53454f2aa171055602878b76713faf60b82090bc9aa48b44c6cc84e1c0c3a42d37b9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
