require 'sinatra'
require 'sinatra/reloader'
require './lib/Word'
require './lib/Definitions'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  @words = Words.all()
  erb(:index)
end

post('/words') do
  word = params.fetch('word')
  @word = Words.new({:word => word})
  @word.save()
  redirect('/')
end
