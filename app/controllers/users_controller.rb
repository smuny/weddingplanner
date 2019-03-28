class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :destroy] # do destroy
  before_action :authorized, except: [:new, :create]

  def index
    @users = User.all
  end

  def show
    if @user != current_user
      @appointments = @user.appointments.where(is_private: false)
    else
      @appointments = @user.appointments
    end
      render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
# byebug
    redirect_to @user
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    @user.update(user_params)
    if @user.valid?
    redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone_number, :email, :password, :password_confirmation)
  end

  def get_user
    @user = User.find(params[:id])
  end
end
