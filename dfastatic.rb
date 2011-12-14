require 'rubygems'
require 'sinatra'

configure do
  load 'setupdata.rb'
end

get '/' do
  File.read(File.join('public', 'home.html'))
end

get '/login.html' do
  File.read(File.join('public', 'login.html'))
end

post '/dashboard' do
	erb :dashboard
end

