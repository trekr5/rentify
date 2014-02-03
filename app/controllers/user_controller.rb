class UserController < ApplicationController

  def new
  end

  def create
   # render text: params[:post].inspect
     @user = User.new(user_params)
     @user.save
     redirect_to @user
  end

  private
    def user_params
      params.require(:user).permit(:postcode, :email)
    end


  def show
     @user = User.find(params[:id])
  end


end
