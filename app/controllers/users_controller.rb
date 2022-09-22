class UsersController < ApplicationController

  before_action :set_user, only: %i[index profile destroy edit]

  rescue_from Pundit::NotAuthorizedError do |e|
    redirect_to root_path, alert: "You should sign in " 
  end

  def index
    @users = User.all
  end

  def profile
  end

  def update
    @user = User.find(params[:id])
    @user.update( params.require(:user).permit(:full_name, :avatar_url))
    p "selected user: #{@user.inspect}"
    redirect_to users_path, notice: "profile updated"
  end

  def edit
  end

  def admin_edit
    @user = User.find(params[:id])
    authorize @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: "User was removed"
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  private

  def set_user
    @user = current_user
  end
  
end
