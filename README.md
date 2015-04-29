Title: Fruitful - A Site for Finding Seasonal Produce 

Team Members: Michael Roe, Nick Rodriguez, & Daniel Goldberg 

Website Link: http://seasonality.herokuapp.com/seasonality

Demo Link: 

Idea: Our application informs you with produce that is currently in season, based on your location. We also map the you to local farmers markets in your area (or any zipcode you'd like), where seasonal produce may be bought fresh. It works by using the USDA National Farmers Market Directory API which provides information on seasonal produce and regional farmers markets, and it also uses the Google Maps API to map these local market locations. 

Models and Description:

Produces: has name, and image url. Produce objects belong to a particular months of the location/month.
	Model Relationships: has_and_belongs_to_many Locations


Location: has location name (all 50 States in the U.S.)
	Model Relationships: has_many Seasonalities
						 has_and_belongs_to_many Produces


Seasonality: has location name, month, and location_id. 
	Model Relationships: belongs_to Locations
						 has_and_belongs_to_many Produces

Division of Labor: 

Michael: implemented Bootstrap theme and associated gems. Homepage design and routing between pages. 

Nick: implemented connection between GoogleMaps API & USDA Farmer's Market API, allowing "zip code" & "current location" search.

Daniel: created the Models and Model Relationships. Filled the databse with all the information. 

Rails Devise
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is open source and supported by subscribers. Please join RailsApps to support development of Rails Composer.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.1.2
- Rails 4.1.6

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
=======
Title: Fruitful - A Site for Finding Seasonal Produce
Team Members: Michael Roe, Nick Rodgriguez, & Daniel Goldberg
Demo Link: [insert link after Heroku hosting]

Idea: Our application provides the user with the types of produce which are currently in season, based on their location. It works by using the USDA National Farmers Market Directory API which provides information on seasonal produce and regional farmers markets, and it also uses the Google Maps API to show the user where to buy the seasonal produce. 


Models and Description:

Seasonality Model : 
has Location (based on State), and 12 months of the year which share a model relationship (has_and_belongs_to) with the Produce model. 

Produce: 
has name, and image url. Produce objects belong to a particular months of the location/month 

Division of Labor:
Michael: implemented Bootstrap and associated gems. Homepage design and routing. 
Nick: 
Daniel: 




Rails Devise
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is open source and supported by subscribers. Please join RailsApps to support development of Rails Composer.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.1.2
- Rails 4.1.6

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
>>>>>>> 59fa60d7521a630ee505fd8ec29e4db389c715ac
