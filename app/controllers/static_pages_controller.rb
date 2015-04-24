class StaticPagesController < ApplicationController
	def show
	end

	def index
	end

	def location
		state = params[:name]
		@l = Location.find_by_name(state)
		@month = Date::MONTHNAMES[Date.today.month]
		#in location.rb use getproduce method
		@p = @l.get_produce(@month)
		redirect_to index_path(@p)
	end
end
