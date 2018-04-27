class Manage::UsersController < ApplicationController
  layout "user"
  before_action :set_user, only: [:show,:edit, :update]

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
      redirect_to manage_users_path, notice: t('flash.actions.create.notice', resource_name: @user.email )
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to manage_users_path, notice: t('flash.actions.update.notice', resource_name: @user.email )
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
end
