require 'sinatra'
require 'sinatra/reloader'
require './lib/Word_Definitions'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
