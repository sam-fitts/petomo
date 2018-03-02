class ReservationsController < ApplicationController
  # def index
  # end

  # def show

  # end

  def new
    @reservation = Reservation.new
    @animal = Animal.find(params[:animal_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @animal = Animal.find(params[:animal_id])
    @reservation.animal = @animal
    if @reservation.save
      redirect_to confirmation_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def reservation_params
      params.require(:reservation).permit(:start_date, :end_date, :animal_id, :user_id)
  end
end
