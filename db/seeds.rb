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
produce_list = Set.new [Produce.create(name: "Artichokes", img_url: "http://pixabay.com/static/uploads/photo/2014/12/26/19/49/artichoke-580696_640.jpg"),
    Produce.create(name: "Asparagus", img_url: "http://pixabay.com/static/uploads/photo/2015/03/22/22/01/asparagus-685269_640.jpg"), 
    Produce.create(name: "Beets", img_url: "http://pixabay.com/static/uploads/photo/2015/03/24/08/52/beetroot-687251_640.jpg"), 
	Produce.create(name: "Cherries", img_url: "http://pixabay.com/static/uploads/photo/2013/07/26/03/42/cherry-167341_640.jpg"),
	Produce.create(name: "Kohirabi", img_url: "http://pixabay.com/static/uploads/photo/2014/04/07/01/48/kohlrabi-318154_640.jpg"), 
	Produce.create(name: "Lettuce", img_url: "http://pixabay.com/static/uploads/photo/2013/08/28/18/58/lettuce-176840_640.jpg"),
	Produce.create(name: "Mushrooms", img_url: "http://pixabay.com/static/uploads/photo/2014/06/19/06/27/mushroom-372044_640.jpg"),
	Produce.create(name: "Tangerines", img_url: "http://thumb7.shutterstock.com/display_pic_with_logo/152950/193541879/stock-photo-tangerine-or-mandarin-fruit-isolated-on-white-background-cutout-193541879.jpg"), 
	Produce.create(name: "Rhubarb", img_url: "http://thumb1.shutterstock.com/display_pic_with_logo/192655/148617818/stock-photo-image-of-fresh-stems-of-rhubarb-straight-from-the-garden-vegetable-patch-148617818.jpg"),
	Produce.create(name: "Avocados", img_url: "http://thumb1.shutterstock.com/display_pic_with_logo/596689/205541344/stock-photo-organic-raw-green-avocados-sliced-in-half-205541344.jpg"),
	Produce.create(name: "Broccoli", img_url: "http://thumb101.shutterstock.com/display_pic_with_logo/544783/139259597/stock-photo-group-of-fresh-broccoli-close-up-139259597.jpg"),
	Produce.create(name: "Cabbage", img_url: "http://thumb1.shutterstock.com/display_pic_with_logo/750151/134312798/stock-photo-fresh-kitchen-garden-cabbage-with-water-drops-on-a-wooden-background-134312798.jpg"), 
	Produce.create(name: "Cauliflower", img_url: "http://thumb9.shutterstock.com/display_pic_with_logo/359716/227987356/stock-photo-organic-cauliflower-on-wooden-background-227987356.jpg"),
	Produce.create(name: "Celery", img_url: "http://thumb7.shutterstock.com/display_pic_with_logo/359716/159220415/stock-photo-organic-vegetables-celery-food-background-159220415.jpg"), 
	Produce.create(name: "Chard", img_url: "http://thumb1.shutterstock.com/display_pic_with_logo/129448/154529588/stock-photo-mangold-or-swiss-chard-rainbow-leaves-isolated-on-white-154529588.jpg"), 
	Produce.create(name: "Blood Orange", img_url: "http://thumb9.shutterstock.com/display_pic_with_logo/654256/126327326/stock-photo-red-oranges-of-sicily-italy-126327326.jpg"),
	Produce.create(name: "Grapefruit", img_url: "http://thumb101.shutterstock.com/display_pic_with_logo/118042/119933863/stock-photo-grapefruit-with-slices-on-a-wooden-table-119933863.jpg"), 
	Produce.create(name: "Kumquats", img_url: "http://thumb1.shutterstock.com/display_pic_with_logo/1127993/163313990/stock-photo-ripe-kumquat-fruits-isolated-on-white-background-163313990.jpg"), 
	Produce.create(name: "Lemons", img_url: "http://thumb1.shutterstock.com/display_pic_with_logo/356110/109833860/stock-photo-fresh-lemons-109833860.jpg"),
	Produce.create(name: "Oranges", img_url: "http://pixabay.com/static/uploads/photo/2015/01/17/14/27/oranges-602271__180.jpg"), 
	Produce.create(name: "Dates", img_url: "http://thumb1.shutterstock.com/photos/display_pic_with_logo/675958/134294414.jpg"), 
	Produce.create(name: "Kale", img_url: "http://thumb9.shutterstock.com/photos/display_pic_with_logo/324493/134045012.jpg"), 
	Produce.create(name: "Green Onion", img_url: "http://pixabay.com/static/uploads/photo/2015/03/30/19/23/green-onion-699943__180.jpg"), 
	Produce.create(name: "Passion Fruit", img_url: "http://thumb101.shutterstock.com/photos/display_pic_with_logo/479905/479905,1325668020,3.jpg"),
	Produce.create(name: "Green Peas", img_url: "http://pixabay.com/static/uploads/photo/2010/12/13/10/20/peas-2685__180.jpg"), 
	Produce.create(name: "Brussel Sprouts", img_url: "http://pixabay.com/static/uploads/photo/2014/09/27/11/25/brussels-sprouts-463378__180.jpg"), 
	Produce.create(name: "Carrots", img_url: "http://pixabay.com/static/uploads/photo/2015/03/14/14/00/carrots-673184__180.jpg"),
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
	Produce.create(name: "Ginger", img_url: ""), Produce.create(name: "Arugula", img_url: ""), Produce.create(name: "Pomegranetes", img_url: ""), Produce.create(name: "Strawberries", img_url:"http://www.publicdomainpictures.net/pictures/80000/t2/fragole.jpg")]

#For every Location for every Month(seasonality) fill with appropriate produce
ca = Location.find_by name: "California"
ca.add_produce([Produce.get("Asparagus"), Produce.get("Avocados"), Produce.get("Beets"), 
	Produce.get("Broccoli"), Produce.get("Cabbage"), Produce.get("Cauliflower"), 
	Produce.get("Celery"), Produce.get("Chard"), Produce.get("Grapefruit"), 
	Produce.get("Kale"), Produce.get("Kumquats"), Produce.get("Lemons"), Produce.get("Mushrooms"), 
	Produce.get("Oranges"), Produce.get("Tangerines"), Produce.get("Dates"), Produce.get("Green Onion"), 
	Produce.get("Passion Fruit"), Produce.get("Green Peas"), Produce.get("Strawberries")], "April")
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