class SessionsController < ApplicationController
  def new

  end

  def create
    name = params[:session][:id].downcase
    password = params[:session][:password]
    if login(name, password)
      flash[:success] = 'ログインに成功'
      redirect_to manages_path
    else
      flash.now[:danger] = 'ログインに失敗'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url
  end

  private

  def login(name,password)
      @user = User.find_by(name: name)
      if @user && @user.authenticate(password)
        session[:user_id] = @user.id
        return true
      else
        return false
      end
  end
end
