#creates a class called PasswordController
class PasswordController < ApplicationController
  def check_credentials
    render "check.html.erb"
  end
#defines a method called check
  def check
    @user_id=params[:userid]
    @password=params[:password]

    if @user_id.length < 6
      flash.now[:idnotice] = "Your user ID should be more than 6 characters long"
    end

    if @password.length < 6
      flash.now[:pwnotice] = "Your password should be more than 6 characters long"
    end

    if @password.length >= 6 && @user_id.length > 6
      flash.now[:successnotice] = "Your User ID and Password are both valid"
      render "success.html.erb"
    end
  end

end
