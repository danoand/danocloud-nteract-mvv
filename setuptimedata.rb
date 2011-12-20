puts "-----------------"
puts "start setting up global time data"

secondsinaday = 60*60*24

@@time_obj = Time.new

@@month_val = @@month_arr[@@time_obj.month - 1]

@@dates_arr = Array.new
4.times do |i|
  if @@time_obj.day - i > 0 then 
    @@dates_arr.push(@@time_obj.day - i)
  else
    @@dates_arr.push(30 - i)
  end
end

@@myrequest_hsh["date"] = @@time_obj + secondsinaday*30
@@myrequest_hsh["date_countered"] = @@time_obj + secondsinaday*45
@@myrequest_hsh["expiration"] = @@time_obj + secondsinaday*10

puts "stop setting up global time data"
puts "-----------------"


