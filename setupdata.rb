@@time_obj = Time.new

# Listed below are the variables to use in the code:
# -------
# @@month_val: the month to use on Dashboard activity (e.g. DEC)
# @@days_arr: an array of day values (e.g. 24, 23, 22, 21)
# @@names_arr: an array of hashes representing a person in the network
# @@events_arr: an array of hashes representing the events across days

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

@@days_arr = Array.new
4.times do |i|
  if @@time_obj.day - i > 0 then 
    @@days_arr.push(@@time_obj.day - i)
  else
    @@days_arr.push(30 - i)
  end
end

@@events_arr = [
  {"event"=>"New Request","title"=>"Investor Introduction - Jim Smith","time"=>"4:30 PM","person"=>"Lesley W"},
  {"event"=>"Updated Request","title"=>"My Training Goals ","time"=>"1:30 PM","person"=>"You"},
  {"event"=>"Countered Request","title"=>"New Company Tagline","time"=>"10:25 AM","person"=>"Malcolm A"},
  {"event"=>"Completed Promise","title"=>"2012 User Conference Agenda","time"=>"7:47 PM","person"=>"Sean M"},
  {"event"=>"Countered Offer","title"=>"2012 User Conference Site","time"=>"3:12 PM","person"=>"Confluence Marketing"},
  {"event"=>"New Request","title"=>"Holiday Party Ideas","time"=>"9:12 AM","person"=>"Heather L"},
  {"event"=>"Closed Promise","title"=>"2012 Budget Proposal","time"=>"8:15 PM","person"=>"You"},
  {"event"=>"Updated Request","title"=>"Mobile App Feature Ideas","time"=>"5:12 PM","person"=>"Patricia G"},
  {"event"=>"Updated Request","title"=>"December Blog Ideas","time"=>"4:30 PM","person"=>"Daphne M"}
  ]


@@names_arr = [
  {"firstname"=>"Bert","lastname"=>"Jacobson","gender"=>"M"},
  {"firstname"=>"Daphne","lastname"=>"Moran","gender"=>"F"},
  {"firstname"=>"Graham","lastname"=>"Klein","gender"=>"M"},
  {"firstname"=>"Heather","lastname"=>"Lynn","gender"=>"F"},
  {"firstname"=>"Jason","lastname"=>"Edwards","gender"=>"M"},
  {"firstname"=>"Lesley","lastname"=>"Wall","gender"=>"F"},
  {"firstname"=>"Malcolm","lastname"=>"Alvarez","gender"=>"M"},
  {"firstname"=>"Patricia","lastname"=>"Gates","gender"=>"F"},
  {"firstname"=>"Sean","lastname"=>"Barnett","gender"=>"M"},
  {"firstname"=>"Wanda","lastname"=>"Manning","gender"=>"F"}
  ]