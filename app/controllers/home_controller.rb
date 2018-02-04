class HomeController < ApplicationController
	def index
		@houses = House.all
	end
end
