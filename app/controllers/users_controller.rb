class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
    @orders = @current_user.orders
  end
  
  def new
    @user = User.new
  end

  def create 
    @user = User.create user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :address, :bank, :account, :code, :password, :password_confirmation)
  end
end
