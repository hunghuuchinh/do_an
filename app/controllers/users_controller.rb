class UsersController < ApplicationController
  def new
  	 @user = User.new
  end
  def show
  	@user = User.find(params[:id])
    byebug
  end
   def create
    @user = User.new(user_params)
    if @user.save
    	flash[:success] = "Welcome to the San Bong Ha Noi!"
    	redirect_to root_path
      # Handle a successful save.
    else
      render 'new'
    end
  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :phone,  :password,
                                   :password_confirmation)
    end
end
