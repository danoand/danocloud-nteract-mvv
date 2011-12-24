require 'rubygems'
require 'rest-client'

def post_message(textmsg, htmlmsg)
  RestClient.post "https://api:key-9ms56uwdfmqy086auxmlslh35ltkmwi5"\
  "@api.mailgun.net/v2/app2187528.mailgun.org/messages",
  :from => "postmaster@app2187528.mailgun.org",
  :to => "danfanderson@gmail.com",
  :subject => "My Message to You!",
  :text => textmsg,
  :html => htmlmsg
end

myfile = File.open("new-request-email.html")

myfilestring = myfile.read

puts Time.now.to_s + "Firing off the email message"
post_message("My message in plain text format", myfilestring)
puts Time.now.to_s + "Completed triggering the email message"
