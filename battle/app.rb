require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    "Hello World!!! My name is Elliott"
end

get '/secret' do
    "This is a secret world, oooooh, ahh! Testing, testing 1, 2, 3."
end

get '/tradegy' do
    "Recite some poerty here..."
end

get '/flamingos' do
    "Insert photo of a pink chicken."
end

get '/cat' do
    erb(:index)
end