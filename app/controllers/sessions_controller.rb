class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to manager_path
      flash[:success] = 'Добро пожаловать!'
      # Sign the user in and redirect to the user's show page.
    else
      flash[:error] = 'Неправильный пароль либо логин. Попробуйте еще раз.'
      redirect_to signin_path
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
