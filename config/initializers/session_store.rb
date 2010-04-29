# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wikidiscography_session',
  :secret      => '3da730f7682fa61eb0f5ed1c257401cc05afa5eccf1e9375f870af0e3277b963ecc961941ce373ad112ac729465a84b1df1fe5997c5e0286df3103a6131458e3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
