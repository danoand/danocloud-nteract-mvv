require 'rubygems'
require 'sinatra'
require 'rest-client'

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
    RestClient.post "https://api:key-8htb17qqgo-8h5mddaqdf3q1g6vxup70"\
    "@api.mailgun.net/v2/app2186986.mailgun.org/messages",
    :from => "postmaster@app2186986.mailgun.org",
    :to => "danfanderson@gmail.com",
    :subject => "Did This Work?",
    :text => "Dude, did this work? Sending from my Sinatra app."
  end
  
  puts "Firing off the email message..."
  puts "Inspecting the response yields: #{post_message}"
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
