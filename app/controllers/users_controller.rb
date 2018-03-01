# TO ADD INTO DEVISE CONTROLLER:

# def user_posts
#   @posts = policy_scope(Post)
# end

# class UsersController < ApplicationController
#   def update
#     @user = User.find(params[:id])
#     @user.toggle!(:admin)
#     flash[:success] = 'OK!'
#     redirect_to root_path
#   end
# end



# class UserController < ApplicationController
#   before_action :authenticate_user!


#   def index
#     @users = policy_scope(User).order(created_at: :desc)
#   end

#   def show
#     @user = User.find(params[:id])
#   end

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     if @user.save
#       redirect_to user_path(@user)
#     else
#       render :new
#     end
#     authorize @user
#   end

#   def edit
#     @user = User.find(params[:id])
#   end

#   def update
#     @animal = Animal.find(params[:id])
#     @animal.update(params[:animal])
#     @users.save
#   end

#   def destroy
#     @animal = Animal.find(params[:id])
#     @user = @animal.users
#     @animal.destroy
#     redirect_to user_path(@user)
#   end

#   private


#   def user_params
#     params.require(:user).permit(:name, :location)
#   end

#   def skip_pundit?
#     devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
#   end

# end
