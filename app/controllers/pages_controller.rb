class PagesController < ApplicationController


  def home
    @users = User.all
  end

  def profile
    @user = current_user
  end

  def about

  end
end
