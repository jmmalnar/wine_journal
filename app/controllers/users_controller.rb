class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  # GET /users/1/edit
  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Thank you for signing up for Amy's Wine Journal"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password,
                                 :password_confirmation)
  end
end
