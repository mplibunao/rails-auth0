class DashboardController < ApplicationController
  include Secured

  def show
    @user_info = session[:userinfo]
    @info = @user_info["info"]
    @image = @info["image"]
    @name = @info["name"]
    @raw_info = @user_info["extra"]["raw_info"]

  end
end
