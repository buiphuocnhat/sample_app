class UsersController < ApplicationController
  before_action :logged_in_user, except: %i(new create show)
  before_action :load_users, only: [:show, :edit, :correct_user]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy

  def index
    @users = User.paginate(page: params[:page], per_page: Settings.pages)
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t ".create_success"
      log_in @user
      redirect_to @user
    else
      flash[:success] = t ".create_fail"
      render :new
    end
  end

  def new
    @user = User.new
  end

  def show; end

  def update
    if @user.update user_params
      flash[:success] = t "users.profile_updated"
      redirect_to @user
    else
      flash[:alert] = t "users.profile_updated_fail"
      render :edit
    end
  end

  def edit; end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  private
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  def load_users
    @user = User.find_by id: params[:id]
    return if @user

    flash[:alert] = t "users.user_notexist"
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end

  def logged_in_user
    return if logged_in?

    flash[:danger] = t "users.pls_login"
    redirect_to login_url
  end

  def correct_user
    redirect_to(root_url) unless @user == current_user
  end
end
