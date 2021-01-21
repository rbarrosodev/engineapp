class UsersController < ApplicationController
  before_action :set_user, only: :set_favorite_book
  
  def set_favorite_book; end 

  def update_favorite_book
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to books_engine_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :set_favorite_book }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private 

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:book_id)
  end
end
