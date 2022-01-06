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

get '/random-cat' do
    @sample_name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end

get '/named-cat' do
    #query strings affects the params. 
    #you can add a new param by using & e.g. sample_name=ell&age=300 in the URL
    p 'params', params
    @sample_name = params[:sample_name]
    erb(:index)
end