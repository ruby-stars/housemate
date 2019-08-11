class HomeController < ApplicationController
  def index
    @houses = House.all
    @groups = Group.all
    @tasks = Task.all
    @users = User.all
    @last_houses = @houses.last(6).reverse
    @remaining_houses = @houses[0...(@houses.length - 6)]
  end
end
