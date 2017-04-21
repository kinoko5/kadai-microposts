class OkiniirisController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:iine_id])
    current_user.iine(micropost)
    if(micropost!=nil)
    flash[:success] = 'お気に入りをしました。'
    redirect_to root_path
    else
    flash[:success] = 'お気に入り出来ていない。'
    end
  end

  def destroy
    micropost = Micropost.find(params[:iine_id])
    current_user.uniine(micropost)
    flash[:success] = 'お気に入りをを解除しました。'
    redirect_to root_path
  end
  
  def index
    
  end
  
  def views
    
  end
  
  def show
     @okiniiri =Okiniiri.find(params[:id])
  end
end
