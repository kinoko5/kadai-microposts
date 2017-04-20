class FavoritesController < ApplicationController
  def create
    user = User.find(params[:okiniiri_id])
    current_user.okiniiri(user)
    flash[:success] = 'タスクをお気に入り登録しました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:okiniiri_id])
    current_user.unokiniiri(user)
    flash[:success] = 'タスクをお気に入り登録から解除しました。'
    redirect_to user
  end
end
