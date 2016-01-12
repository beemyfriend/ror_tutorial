class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to @user
  		flash[:success] = "O'Hey! You are now ready to explore events around you!"
  	else
  		render 'new'
  	end
  end

  private

     def user_params
     	params.require(:user).permit(
     		:name, :email, :password,
     		:password_confirmation)
     end
end
