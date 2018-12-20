class UsersController < ApplicationController
  def index
  end

  def show
    @users = User.all
    # @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      render :edit
    else
      render :edit
    end
  end

  private

  def user_params
    params.permit(:user_name, :birthday, :occupation, :id)
  end


end
