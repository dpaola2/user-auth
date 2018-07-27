class UsersController < ApplicationController
  include SessionsHelper
  before_action :authenticate!, except: [:new, :create]

  def show
    find_user
  end

  def new
    @user = User.new
  end

  def edit
    find_user
  end

  def create
    @user = User.new(user_params)

    admin_hook # If first user, it's an admin

    if @user.save
      log_in(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    find_user

    @user.admin = params[:admin] if current_user.admin?

    @user.update_attributes(user_params)
    
    if @user.save
      redirect_to user_path(@user)
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def admin_hook
    if User.count < 1
      @user.admin = true
    end
  end

  def find_user(key=:id)
    @user = User.find(params[key])
  end
end
