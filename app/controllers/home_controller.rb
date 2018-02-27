class HomeController < ApplicationController
	def index
		@houses = House.all
		@groups = Group.all
	end
end
