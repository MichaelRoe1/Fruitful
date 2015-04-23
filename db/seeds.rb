# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


states = [
"Alabama","Alaska","Arizona","Arkansas", "California", "Colorado","Connecticut",
"Delaware","Florida","Georgia","Hawaii", "Idaho","Illinois", "Indiana", "Iowa",
"Kansas", "Kentucky", "Louisiana","Maine","Maryland", "Massachusetts", "Michigan",
"Minnesota", "Mississippi", "Missouri","Montana", "Nebraska", "Nevada","New Hampshire", 
"New Jersey","New Mexico","New York","North Carolina", "North Dakota","Ohio",
"Oklahoma", "Oregon","Pennsylvania", "Rhode Island", "South Carolina",
"South Dakota","Tennessee","Texas","Utah","Vermont", "Virginia", "Washington", 
"West Virginia", "Wisconsin","Wyoming"]

months_of_year = ["january", "february", "march", "april",
"may", "june", "july", "august", "september", "october",
"november", "december"]
 
#create 50 Locations for each state and
#create seasonality aka 12 months of the year for each Location
states.each do |state|
  l = Location.create(name: state)
  months_of_year.each do |m|
    s = Seasonality.new
    s.location = l
    s.month = m
    l.seasonalities << s
  end
end




