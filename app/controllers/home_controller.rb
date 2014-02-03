class HomeController < ApplicationController
  def index
  end

  def new
  end

  def create
   # render text: params[:post].inspect
     @user = User.new(user_params)
     @user.save
     redirect_to @user
     put
  end

  private
    def user_params
      params.require(:user).permit(:postcode, :email)
    end


  def show
      id = params[:id]
      @user = User.find(id)
     # will render the list of entries
  end






end
