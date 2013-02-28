class SessionsController < ApplicationController
  def new
    
  end

  def create
    drifvare = Drifvare.find_by_email params[:session][:email].downcase
    if drifvare && drifvare.authenticate(params[:session][:password])
      sign_in drifvare
      redirect_to drifvare
    else
      flash.now[:error] = "Felaktig email/losenord"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to '/'
  end
end
