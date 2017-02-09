class UsersController < ApplicationController
  before_action :get_user, except: [:index, :new, :create]
  before_action :check_if_admin, except: [:edit, :update]

  def index
    @users = User.all
  end

  def show
  end

  def new
    pass = rand.to_s[2..7].to_i
    @user = User.new(password: pass, password_confirmation: pass)
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_admin_index_path
    else
      render 'new'
    end
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to users_admin_path
    else
      render action: 'edit'
    end
  end

  def make_admin
    @user.update(admin: params[:user][:admin] == '1')
  end

  def destroy
    @user.destroy
    redirect_to users_admin_index_path
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def check_if_admin
    redirect_to :back unless current_user.admin?
  rescue ActionController::RedirectBackError
    redirect_to root_path
  end

  def user_params
    params[:user][:password_confirmation] = params[:user][:password]
    params.require(:user).permit(:name, :surname, :birthdate, :adress, :email, :password, :password_confirmation, :admin)
  end
end
