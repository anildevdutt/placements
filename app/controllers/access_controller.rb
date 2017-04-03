class AccessController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def login
  end

  def logout
    session.delete(:admin_id)
    redirect_to(access_login_path)
  end

  def chklogin
    found_admin = Admin.where(:uname => params[:uname]).first
    if(found_admin)
      authroized_user = found_admin.authenticate(params[:pass])
    end

    if authroized_user
      session[:admin_id] = authroized_user
      flash[:notice] = "Your now logged in"
      redirect_to(students_path)
    else
      flash.now[:notice] = "Invalid username/password"
      render('login')
    end
  end
end
