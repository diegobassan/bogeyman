class UserTypesController < ApplicationController

  layout "user"

  before_action :set_user_type, only: [:show, :edit, :update, :destroy]

  def index
    @user_types = UserType.all
  end

  def show
  end

  def new
    @user_type = UserType.new
  end

  def edit
  end

  def create
    @user_type = UserType.new(user_type_params)

    if @user_type.save
      redirect_to @user_type, notice: t('flash.actions.create.notice', resource_name: @user_type.name )
    else
        render :new
    end
  end

  def update
    if @user_type.update(user_type_params)
      redirect_to @user_type, notice: t('flash.actions.update.notice', resource_name: @user_type.name )
    else
        render :edit
      end
  end

  def destroy
    @user_type.destroy
      redirect_to user_types_url, notice: t('flash.actions.destroy.notice', resource_name: @user_type.name )
  end

  private
    def set_user_type
      @user_type = UserType.find(params[:id])
    end

    def user_type_params
      params.require(:user_type).permit(:name, :description, :authorizeDiscount, :commissionPercentage)
    end
end
