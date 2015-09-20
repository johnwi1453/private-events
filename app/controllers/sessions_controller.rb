class SessionsController < ApplicationController

  def home
  end

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user
      log_in @user
      flash[:success] = "Welcome #{@user.name}"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = "Thank you for logging out"
    redirect_to root_url
  end
end