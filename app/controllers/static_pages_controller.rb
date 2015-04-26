class StaticPagesController < ApplicationController
	def home
	end

	def location
		state = params[:name]
		@l = Location.find_by_name(state)
		# render "home"
		#redi
		@month = Date::MONTHNAMES[Date.today.month]
		@p = @l.get_produce(@month)
	end

	def reroute
		render "home.html.erb"
	end

end
