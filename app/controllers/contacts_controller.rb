class ContactsController < ApplicationController

  def new
  end

  def create
   # render text: params[:post].inspect
#     @user = User.new(user_params)
#     @user.save
     flash[:thank_you] = "Thanks for your submission!"
     redirect_to "/home/thanks"
  end

  private
    def user_params
      params.require(:user).permit(:postcode, :email)
    end


  def show
     @user = User.find(params[:id])
  end

end
