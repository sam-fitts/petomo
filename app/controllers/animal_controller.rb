class AnimalController < ApplicationController
  def create
    @animal = Animal.new(animal_params)
    @shelter = Shelter.find(params[:shelter_id])
    @animal.shelter = @shelter
    if @animal.save
      redirect_to shelter_path(@shelter)
    else
      @animal = Animal.all
      render 'shelters/show'
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(params[:animal])
    @animals.save
  end

  def destroy
    @animal = Animal.find(params[:id])
    @shelter = @animal.shelter
    @animal.destroy
    redirect_to shelter_path(@shelter)
  end
end
