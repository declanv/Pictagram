require 'sinatra'
require 'sinatra-reloader'
require 'active_record'
require 'pg'
require 'httparty'

# MODELS
require_relative 'models/post'

# LIBRARIES

require_relative 'lib/instagram'

ActiveRecord::Base.establish_connection({
  database: 'pictagram',
  adapter: 'postgresql'
  })
