class HomeController < ApplicationController
  def index
    @houses = House.all
    @groups = Group.all
    @last_houses = @houses.last(6).reverse
  end
end
