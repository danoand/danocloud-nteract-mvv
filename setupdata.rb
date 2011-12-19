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

@@month_long_arr = [
  "No Value",
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
]

@@weekday_arr = [
  "Sunday",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday"
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
  {"event"=>"Updated Request","title"=>"Education & Training Goals ","time"=>"1:30 PM","person"=>"<b>YOU</b>"},
  {"event"=>"Countered Request","title"=>"New Company Tagline","time"=>"10:25 AM","person"=>"Malcolm A"},
  {"event"=>"Countered Request","title"=>"Develop Mobile App Workflows","time"=>"9:10 AM","person"=>"You"}
]

@@events2_arr = [
  {"event"=>"Completed Promise","title"=>"2012 User Conference Agenda","time"=>"7:47 PM","person"=>"Sean M"},
  {"event"=>"Countered Offer","title"=>"2012 User Conference Site","time"=>"3:12 PM","person"=>"Confluence Marketing"},
  {"event"=>"New Request","title"=>"Holiday Party Ideas","time"=>"9:12 AM","person"=>"Heather L"},
  {"event"=>"New Request","title"=>"Publish 2012 Recruiting Calendar Online","time"=>"8:10 AM","person"=>"Ron O"}
]

@@events3_arr = [  
  {"event"=>"Closed Promise","title"=>"Develop Our 'Big Data' Methodology","time"=>"8:15 PM","person"=>"Oleg G"},
  {"event"=>"Updated Request","title"=>"Mobile App Feature Ideas","time"=>"5:12 PM","person"=>"Patricia G"},
  {"event"=>"Updated Request","title"=>"December Blog Ideas","time"=>"4:30 PM","person"=>"Daphne M"},
  {"event"=>"Updated Promise","title"=>"Board Introductions with Portfolio Companies","time"=>"Noon","person"=>"Kim N"}
  ]
  
  @@events4_arr = [  
    {"event"=>"Closed Promise","title"=>"2012 Budget Proposal","time"=>"8:02 PM","person"=>"<b>YOU</b>"},
    {"event"=>"Updated Request","title"=>"Present MIT Case Study","time"=>"5:12 PM","person"=>"<b>YOU</b>"},
    {"event"=>"Updated Request","title"=>"Review Tax Compliance Report","time"=>"3:30 PM","person"=>"Daphne M"},
    {"event"=>"Countered Request","title"=>"Recommend a Good Data Architect","time"=>"11:15 AM","person"=>"You"}
    ]

@@days_arr = Array.new
@@days_arr.push(@@events1_arr)
@@days_arr.push(@@events2_arr)
@@days_arr.push(@@events3_arr)
@@days_arr.push(@@events4_arr)

@@names_arr = [
  {"firstname"=>"Bert","lastname"=>"Jacobson","gender"=>"M","title"=>"Dir Customer Support","image_file"=>"male_01.jpg"},
  {"firstname"=>"Daphne","lastname"=>"Moran","gender"=>"F","title"=>"Sales Engineer","image_file"=>"female_01.jpg"},
  {"firstname"=>"Graham","lastname"=>"Klein","gender"=>"M","title"=>"Business Analyst","image_file"=>"male_02.jpg"},
  {"firstname"=>"Heather","lastname"=>"Lynn","gender"=>"F","title"=>"Product Manager","image_file"=>"female_02.jpg"},
  {"firstname"=>"Jason","lastname"=>"Edwards","gender"=>"M","title"=>"Account Manaager","image_file"=>"male_03.jpg"},
  {"firstname"=>"Lesley","lastname"=>"Wall","gender"=>"F","title"=>"Sr. Consultant","image_file"=>"female_01.jpg"},
  {"firstname"=>"Malcolm","lastname"=>"Alvarez","gender"=>"M","title"=>"Community Manager","image_file"=>"male_01.jpg"},
  {"firstname"=>"Patricia","lastname"=>"Gates","gender"=>"F","title"=>"VP of Engineering","image_file"=>"female_02.jpg"},
  {"firstname"=>"Sean","lastname"=>"Barnett","gender"=>"M","title"=>"SVP Sales","image_file"=>"male_03.jpg"},
  {"firstname"=>"Wanda","lastname"=>"Manning","gender"=>"F","title"=>"CFO","image_file"=>"female_01.jpg"}
  ]
  
@@myrequest_hsh = {
  "title"=>"Source 3 Candidates for the VP of Marketing Role",
  "description"=>"Find three candidates that we can consider for the VP of Markerting position.  These can come from your personal network, our 'friends & family' list, or traditional sources. See the attached job description",
  "files"=>"JobDescription_VPMarketing.pdf",
  "why"=>"Finding the right person for this roles is critical to taking our current story and refining it for the bigger marketplace.  Our company needs to accelerate customer adoption across multiple customer segments and industry verticals.  We need the expertise and leadership required to be a leader in our space",
  "who"=>"Charles Gonderson",
  "who_email"=>"charles.gonderson@gmail.com",
  "who_email_image"=>"male_04.jpg",
  "date"=>Time.local(2012,2,15,17,30,0),
  "date_countered"=>Time.local(2012,3,1,17,30,0),
  "comments_countered"=>"Dan, sounds goods, just adding a little more time due some other commitments.  Okay with you?",
  "expiration"=>Time.local(2012,1,9,17,30,0),
  "conditions"=>"At least three candidates; 10 years of experience in technology or software industry; early stage and established companies; 'good person' persona",
  "impact_gain"=>"This is a key hire. Success will enable us to consider you our 'goto' source for executive and director level talent",
  "impact_risk"=>"Failure to find this candidate quickly will put us back on our company roadmap that we have committed to with our board. Don't let us down!"
}
  
puts "stop setting up global data"
puts "-----------------"


