require "open-uri"
remote_base_url = "http://en.wikipedia.org/wiki"

start_year = 2000
end_year = 2013 

# (start_year..end_year).each do |year|
#   rpage = open(remote_base_url + "/" + year.to_s)
#   
#   local_fname = "copy-of-" + year.to_s + ".html"
#   local_file = open(local_fname, "w")
#   local_file.write(rpage.read)
#   local_file.close
#   
#   puts "Wrote file" + local_fname
#   sleep 1
# end

compiled_file = open(start_year.to_s + "-" + end_year.to_s + ".html", "w")
(start_year..end_year).each do |year|
  local_fname = "copy-of-" + year.to_s + ".html"
  local_file = open(local_fname, "r")
  
  compiled_file.write(local_file.read)
  local_file.close
end

compiled_file.close

# Specify two numbers, representing a start and end year
# Use that range to create a loop
# Retrieve the Wikipedia entry that corresponds to each iteration of the loop
# Save that Wikipedia page to a corresponding file on your hard drive
# In a second loop, combine all those year entries into one file, with the name of "start_year-end_year.html"