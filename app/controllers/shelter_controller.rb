class ShelterController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find(params[:id])
    @animal = Animal.all
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)
    if @shelter.save
      redirect_to shelter_path(@shelter)
    else
      render :new
    end
  end

  private


  def shelter_params
    params.require(:shelter).permit(:name, :location)
  end
end
