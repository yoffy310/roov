class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @rooms = current_user.rooms.includes(:user).page(params[:page]).per(5).order('created_at DESC')
  end

  def edit
   @user = User.find(params[:id])
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:nickname, :avatar, :birth_day, :sex, :housemate, :occupation, :image, :image_cache)
  end
end
