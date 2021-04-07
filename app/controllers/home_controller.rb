class HomeController < ApplicationController

  def index
    @ads =  current_user.ads.where(params[:user_id])

  end

end
