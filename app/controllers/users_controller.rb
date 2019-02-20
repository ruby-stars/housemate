class UsersController < ApplicationController
	load_and_authorize_resource

def index
  @users = User.all
end

def show
  @user = User.find(params[:id])
end

def dashboard
	@user = User.find(params[:id])
	@houses = @user.houses
	@tasks = @user.tasks.order(duedate: :asc)
end

end
