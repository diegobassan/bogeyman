class Manage::UsersController < ApplicationController

  layout "user"

  before_action :set_user, only: [:show, :edit, :update]

  def index
    @user = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      respond_with(@user, :location => manage_users_url)
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      respond_with(@user, :location => manage_users_url)
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def  flash_interpolation_options
    { resource_name:  @user .email}
  end

end
