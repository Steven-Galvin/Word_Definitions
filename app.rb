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
  definition = params.fetch('definition')
  @word.add_definition(definition)
  @word.save()
  redirect('/')
end

get('/word/:id') do
  @word = Words.find(params.fetch("id"))
  erb(:word)
end

post('/add-definition') do
  definition = params.fetch('definition')
  @word = Words.find(params.fetch("id"))
  @word.add_definition(definition)
  redirect("/word/#{@word.id()}")
end

post('/reset-words') do
  Words.clear()
  redirect('/')
end
