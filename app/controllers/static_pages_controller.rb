class StaticPagesController < ApplicationController
  def home
    if current_user
  @micropost = current_user.microposts.build if current_user
  @feed_items = current_user.feed.paginate(page: params[:page])
end
end

def help
end

def about
end

def contact
end
end
