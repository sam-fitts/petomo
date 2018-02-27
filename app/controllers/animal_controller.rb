class AnimalController < ApplicationController

  def new
    @animal = Animal.new if @user.is_shelter?
  end

  def create
    @animal = Animal.new(animal_params)
    @user = User.find(params[:user_id])
    @animal.user = @user
    if @animal.save
      redirect_to user_path(@user)
    else
      @animal = Animal.all
      render 'users/show'
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def destroy
    @animal = Animal.find(params[:id])
    @user = @animal.user
    @animal.destroy
    redirect_to user_path(@user)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(params[:animal])
    @animals.save
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :description, :animal_type, :pictures)
  end

end
