# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'set'

states = [
"Alabama","Alaska","Arizona","Arkansas", "California", "Colorado","Connecticut",
"Delaware","Florida","Georgia","Hawaii", "Idaho","Illinois", "Indiana", "Iowa",
"Kansas", "Kentucky", "Louisiana","Maine","Maryland", "Massachusetts", "Michigan",
"Minnesota", "Mississippi", "Missouri","Montana", "Nebraska", "Nevada","New Hampshire", 
"New Jersey","New Mexico","New York","North Carolina", "North Dakota","Ohio",
"Oklahoma", "Oregon","Pennsylvania", "Rhode Island", "South Carolina",
"South Dakota","Tennessee","Texas","Utah","Vermont", "Virginia", "Washington", 
"West Virginia", "Wisconsin","Wyoming"]

months_of_year = ["January", "February", "March", "April",
"May", "June", "July", "August", "September", "October",
"November", "December"]
 
#create 50 Locations for each state and
#create seasonality aka 12 months of the year for each Location
states.each do |state|
  l = Location.create(name: state)
  months_of_year.each do |m|
    s = Seasonality.create(location: l, month: m)
    l.seasonalities << s
  end
end
produce_list = Set.new [Produce.create(name: "Artichokes", img_url: ""), Produce.create(name: "Asparagus", img_url: ""), Produce.create(name: "Beets", img_url: ""), 
	Produce.create(name: "Cherries", img_url: ""), Produce.create(name: "Kohirabi", img_url: ""), Produce.create(name: "Lettuce", img_url: ""),
	Produce.create(name: "Mushrooms", img_url: ""), Produce.create(name: "Spinach", img_url: ""), Produce.create(name: "Strawberries", img_url: ""),
	Produce.create(name: "Tangerines", img_url: ""), Produce.create(name: "Rhubarb", img_url: ""), Produce.create(name: "Avocados", img_url: ""),
	Produce.create(name: "Broccoli", img_url: ""), Produce.create(name: "Cabbage", img_url: ""), Produce.create(name: "Cauliflower", img_url: ""),
	Produce.create(name: "Celery", img_url: ""), Produce.create(name: "Chard", img_url: ""), Produce.create(name: "Blood Orange", img_url: ""),
	Produce.create(name: "Grapefruit", img_url: ""), Produce.create(name: "Kumquats", img_url: ""), Produce.create(name: "Lemons", img_url: ""),
	Produce.create(name: "Oranges", img_url: ""), Produce.create(name: "Dates", img_url: ""), 	Produce.create(name: "Kale", img_url: ""), 
	Produce.create(name: "Green Onion", img_url: ""), Produce.create(name: "Passion Fruit", img_url: ""),
	Produce.create(name: "Green Peas", img_url: ""), Produce.create(name: "Brussel Sprouts", img_url: ""), Produce.create(name: "Carrots", img_url: ""),
	Produce.create(name: "Turnips", img_url: ""),Produce.create(name: "Raspberries", img_url: ""), Produce.create(name: "Tomatoes", img_url: ""),
	Produce.create(name: "Basil", img_url: ""), Produce.create(name: "Cucumbers", img_url: ""), Produce.create(name: "Apricots", img_url: ""), 
	Produce.create(name: "Corn", img_url: ""), Produce.create(name: "Figs", img_url: ""), Produce.create(name: "Eggplant", img_url: ""), 
	Produce.create(name: "Nectarines", img_url: ""), Produce.create(name: "Peaches", img_url: ""), Produce.create(name: "Asian Pears", img_url: ""), 
	Produce.create(name: "Plums", img_url: ""), Produce.create(name: "Potatoes", img_url: ""), Produce.create(name: "Squash", img_url: ""), 
	Produce.create(name: "Peppers", img_url: ""), Produce.create(name: "Pears", img_url: ""), Produce.create(name: "Melons", img_url: ""), 
	Produce.create(name: "Apples", img_url: ""), Produce.create(name: "Grapes", img_url: ""), "Tomatillos", Produce.create(name: "Persimmons", img_url: ""), 
	Produce.create(name: "Chili Peppers", img_url: ""), Produce.create(name: "Pineapple", img_url: ""), Produce.create(name: "Kiwi", img_url: ""),
	Produce.create(name: "Yams", img_url: ""), Produce.create(name: "Garlic", img_url: ""), Produce.create(name: "Collard Greens", img_url: ""),
	Produce.create(name: "Radishes", img_url: ""), Produce.create(name: "Swiss Chard", img_url: ""), Produce.create(name: "Blackberries", img_url: ""), 
	Produce.create(name: "Scallions", img_url: ""), Produce.create(name: "Blueberries", img_url: ""), Produce.create(name: "Watermelon", img_url: ""),
	Produce.create(name: "Ginger", img_url: ""), Produce.create(name: "Arugula", img_url: ""), Produce.create(name: "Pomegranetes", img_url: "")]

#For every Location for every Month(seasonality) fill with appropriate produce
ca = Location.find_by name: "California"
ca.add_produce([Produce.get("Asparagus"), Produce.get("Avocados"), Produce.get("Beets"), 
	Produce.get("Broccoli"), Produce.get("Cabbage"), Produce.get("Cauliflower"), 
	Produce.get("Celery"), Produce.get("Chard"), Produce.get("Grapefruit"), 
	Produce.get("Kale"), Produce.get("Kumquats"), Produce.get("Lemons"), Produce.get("Mushrooms"), 
	Produce.get("Oranges"), Produce.get("Tangerines"), Produce.get("Dates"), Produce.get("Green Onion"), 
<<<<<<< HEAD
	Produce.get("Passion Fruit"), Produce.get("Green Peas"), Produce.get("Strawberries")], "January")
ca.add_produce([Produce.get("Asparagus"), Produce.get("Avocados"), Produce.get("Beets"), 
	Produce.get("Broccoli"), Produce.get("Cabbage"), Produce.get("Cauliflower"), 
	Produce.get("Celery"), Produce.get("Chard"), Produce.get("Grapefruit"), 
	Produce.get("Kale"), Produce.get("Kumquats"), Produce.get("Lemons"), Produce.get("Mushrooms"), 
	Produce.get("Oranges"), Produce.get("Tangerines"), Produce.get("Dates"), Produce.get("Green Onion"), 
	Produce.get("Passion Fruit"), Produce.get("Green Peas"), Produce.get("Strawberries")], "April")
=======
	Produce.get("Passion Fruit"), Produce.get("Green Peas"), Produce.get("Strawberries")], "April")

>>>>>>> ecfe848b49b62bdd2b64b44e313521fdc62f2343
# ca.add_produce([Produce.get("Asparagus"), Produce.get("Avocados"), Produce.get("Beets"), 
# 	Produce.get("Broccoli"), Produce.get("Brussel Sprouts"), Produce.get("Cabbage"), Produce.get("Cauliflower"), 
# 	Produce.get("Celery"), Produce.get("Chard"), Produce.get("Carrots"), Produce.get("Grapefruit"), 
# 	Produce.get("Kale"), Produce.get("Kumquats"), Produce.get("Lemons"), Produce.get("Mushrooms"), 
# 	Produce.get("Oranges"), Produce.get("Tangerines"), Produce.get("Dates"), Produce.get("Lettuce"),
# 	Produce.get("Green Onion"), Produce.get("Passion Fruit"), Produce.get("Green Peas"), Produce.get("Strawberries"), Produce.get("Turnips")], "february")
# ca.add_march_produce()
# ca.add_april_produce()
# ca.add_may_produce()
# ca.add_june_produce()
# ca.add_july_produce()
# ca.add_august_produce()
# ca.add_september_produce()
# ca.add_october_produce()
# ca.add_november_produce()
# ca.add_december_produce()