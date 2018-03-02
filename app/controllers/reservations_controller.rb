class ReservationsController < ApplicationController
  # def index
  # end

  # def show

  # end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    if reservation.save
      redirect_to root_path
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
