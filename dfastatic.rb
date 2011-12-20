require 'rubygems'
require 'sinatra'

configure do
  load 'setupdata.rb'
end

before '/' do 
  load 'setuptimedata.rb'
end

get '/' do
  File.read(File.join('public', 'home.html'))
end

get '/login.html' do
  File.read(File.join('public', 'login.html'))
end

get '/viewmyrequest' do
  erb :viewmyrequest
end

get '/newrequestemail' do
  erb :newrequestemail
end

get '/viewrequestreceiver' do
  erb :viewrequestreceiver
end

get '/counterrequestemail' do
  erb :counterrequestemail
end

get '/viewrequestreceiveredited' do
  erb :viewrequestreceiveredited
end

get '/dashboard' do
  erb :dashboard
end

post '/dashboard' do
  erb :dashboard
end

