class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   include SessionsHelper
   private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    #@count_iinings = user.iinings.count
    #@count_iiners = user.iiners.count
  end
  
  def count(micropost)
    @count_iinings = micropost.iinings.count
    @count_iiners = micropost.iiners.count
  end  
end

