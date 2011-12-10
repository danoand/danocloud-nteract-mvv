require 'rubygems'
require 'sinatra'

get '/' do
  File.read(File.join('public', 'home.html'))
end

get '/login.html' do
    File.read(File.join('public', 'login.html'))
end

post '/dashboard.html' do
  redirect "/dashboard.html"
end

