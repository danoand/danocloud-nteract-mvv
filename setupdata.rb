# Listed below are the variables to use in the code:
# -------
# @@month_val: the month to use on Dashboard activity (e.g. DEC)
# @@dates_arr: an array of day values (e.g. 24, 23, 22, 21)
# @@names_arr: an array of hashes representing a person in the network
# @@event1_arr, @@event2_arr, @@event3_arr, etc.: each is an array of hashes representing the events of the day
# @@days_arr: an array of days of events... so an array whose elements are @@event1_arr, @@event2_arr, @@event3_arr, etc.

puts "-----------------"
puts "start setting up global data"

@@time_obj = Time.new

@@month_arr = [
  "JAN",
  "FEB",
  "MAR",
  "APR",
  "MAY",
  "JUN",
  "JUL",
  "AUG",
  "SEP",
  "OCT",
  "NOV",
  "DEC"
]

@@month_val = @@month_arr[@@time_obj.month - 1]

@@dates_arr = Array.new
4.times do |i|
  if @@time_obj.day - i > 0 then 
    @@dates_arr.push(@@time_obj.day - i)
  else
    @@dates_arr.push(30 - i)
  end
end

@@events1_arr = [
  {"event"=>"New Request","title"=>"Investor Introduction - Jim Smith","time"=>"4:30 PM","person"=>"Lesley W"},
  {"event"=>"Updated Request","title"=>"My Training Goals ","time"=>"1:30 PM","person"=>"You"},
  {"event"=>"Countered Request","title"=>"New Company Tagline","time"=>"10:25 AM","person"=>"Malcolm A"}
]

@@events2_arr = [
  {"event"=>"Completed Promise","title"=>"2012 User Conference Agenda","time"=>"7:47 PM","person"=>"Sean M"},
  {"event"=>"Countered Offer","title"=>"2012 User Conference Site","time"=>"3:12 PM","person"=>"Confluence Marketing"},
  {"event"=>"New Request","title"=>"Holiday Party Ideas","time"=>"9:12 AM","person"=>"Heather L"}
]

@@events3_arr = [  
  {"event"=>"Closed Promise","title"=>"2012 Budget Proposal","time"=>"8:15 PM","person"=>"You"},
  {"event"=>"Updated Request","title"=>"Mobile App Feature Ideas","time"=>"5:12 PM","person"=>"Patricia G"},
  {"event"=>"Updated Request","title"=>"December Blog Ideas","time"=>"4:30 PM","person"=>"Daphne M"}
  ]

@@days_arr = Array.new
@@days_arr.push(@@events1_arr)
@@days_arr.push(@@events2_arr)
@@days_arr.push(@@events3_arr)

@@names_arr = [
  {"firstname"=>"Bert","lastname"=>"Jacobson","gender"=>"M","title"=>"Dir Customer Support"},
  {"firstname"=>"Daphne","lastname"=>"Moran","gender"=>"F","title"=>"Sales Engineer"},
  {"firstname"=>"Graham","lastname"=>"Klein","gender"=>"M","title"=>"Business Analyst"},
  {"firstname"=>"Heather","lastname"=>"Lynn","gender"=>"F","title"=>"Product Manager"},
  {"firstname"=>"Jason","lastname"=>"Edwards","gender"=>"M","title"=>"Account Manaager"},
  {"firstname"=>"Lesley","lastname"=>"Wall","gender"=>"F","title"=>"Sr. Consultant"},
  {"firstname"=>"Malcolm","lastname"=>"Alvarez","gender"=>"M","title"=>"Community Manager"},
  {"firstname"=>"Patricia","lastname"=>"Gates","gender"=>"F","title"=>"VP of Engineering"},
  {"firstname"=>"Sean","lastname"=>"Barnett","gender"=>"M","title"=>"SVP Sales"},
  {"firstname"=>"Wanda","lastname"=>"Manning","gender"=>"F","title"=>"CFO"}
  ]
  
puts "stop setting up global data"
puts "-----------------"

