# frozen_string_literal: true

class GroupsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource :house
  load_and_authorize_resource :group, through: :house

  before_action :set_group, only: %i[show edit update destroy]
  before_action :set_house

  def index
    @groups = Group.all
  end

  def show; end

  def new
    @group = Group.new
  end

  def edit; end

  def create
    @group = Group.new(group_params)
    @house.groups << @group
    current_user.groups << @group

    respond_to do |format|
      if @group.save
        format.html do
          redirect_to house_group_url(@house, @group),
                      notice: 'Group was successfully created.'
        end
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json do
          render json: @group.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html do
          redirect_to house_group_url(@house, @group),
                      notice: 'Group was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json do
          render json: @group.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  def destroy
    @group.destroy
    respond_to do |format|
      format.html do
        redirect_to house_groups_url,
                    notice: 'Group was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def set_house
    @house = House.find(params[:house_id])
  end

  def group_params
    params[:group].permit(:name, :about)
  end
end
