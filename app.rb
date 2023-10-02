# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv'
require './app/adapters/controllers/user_controllers'
Dotenv.load

set :database, { adapter: 'sqlite3', database: ENV['DB_PATH'] }

post '/users' do
  { result: UserController.create(params) }.to_json
end
