<<<<<<< HEAD
class StaticPagesController < ApplicationController
end
=======
class StaticPagesController < ApplicationController
	def home
	end

	def location
		state = params[:name]
		@l = Location.find_by_name(state)
		@month = Date::MONTHNAMES[Date.today.month]
		#in location.rb use getproduce method
		@p = @l.get_produce(@month)
	end

	def reroute
		render "home.html.erb"
	end

end
>>>>>>> 59fa60d7521a630ee505fd8ec29e4db389c715ac
