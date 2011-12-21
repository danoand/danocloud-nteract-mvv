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
  
  def post_message
    RestClient.post "https://api:key-08e7ad62d29c89e267xbbfgv8zu24nx4"\
    "@api.mailgun.net/v2",
    :from => "Dan Yahoo <danandersonmobile@yahoo.com>",
    :to => "danfanderson@gmail.com",
    :subject => "Did This Work?",
    :text => "Dude, did this work?"
  end
  
  puts "Firing off the email message..."
  puts "Inspecting the response yields: #{post_message.inpsect}"
  puts "Completed firing off the email message..."
  
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
