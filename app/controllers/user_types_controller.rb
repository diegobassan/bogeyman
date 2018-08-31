class UserTypesController < ApplicationController

  layout "user"

  before_action :set_user_type, only: [:show, :edit, :update, :destroy]

  def index
    @user_types = UserType.all.page(params[:page]).per(6)

    respond_to do |format|
      format.html
      format.js { render :layout => false }
    end
    
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
      respond_with(@user_type, :location => user_types_url)
    else
        render :new
    end
  end

  def update
    if @user_type.update(user_type_params)
      respond_with(@user_type, :location => user_types_url)
    else
        render :edit
      end
  end

  def destroy
    @user_type.destroy
      respond_with(@user_type, :location => user_types_url)
  end

  private
    def set_user_type
      @user_type = UserType.find(params[:id])
    end

    def user_type_params
      params.require(:user_type).permit(:name, :description, :authorizeDiscount, :commissionPercentage)
    end
    def  flash_interpolation_options
      { resource_name:  @user_type .name}
    end
end
