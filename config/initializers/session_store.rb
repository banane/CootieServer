# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cootie_session',
  :secret      => '394f53171a1f1ce606db309310d2aabedf8510f00ba02801701899f33d5543bec1fb1219ba7eae179cf8ced5f3df9e1dcf68f14d12854cc16ee4e42233c848ac'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
