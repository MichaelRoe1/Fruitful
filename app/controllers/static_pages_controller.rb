class StaticPagesController < ApplicationController
	def home
	end

	def location
		state = params[:name]
		state = state.capitalize
		@l = Location.find_by_name(state)
		if @l == nil
		  flash[:error] = "Please enter a State"
		  render "home.html.erb"
		else
		  @month = Date::MONTHNAMES[Date.today.month]
		  @p = @l.get_produce(@month)
		end
	end

	def reroute
		render "home.html.erb"
	end

end
