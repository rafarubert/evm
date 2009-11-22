# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_euvendomicrosol_session',
  :secret      => '66e58f92e7b975f7171817d12e26c18a179df3291cc315b8e822770789653d557d7ddb2ea748ae774e12a0e85a9215f0c071ac17bf378f0a05c338e2cf34e076'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
