class UsersController < ApplicationController

  before_action :set_user, only: %i[profile update destroy edit]

  def index
    @users = User.all
  end

  def profile
    
  end

  def update
    @user.update( params.require(:user).permit(:full_name, :avatar_url))
    redirect_to profile_path, notice: "profile updated"
  end

  def edit

  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: "User removed"
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def set_user
    @user = current_user
  end
  
end
