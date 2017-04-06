class FilterStudentsController < ApplicationController
  before_action :confirm_logged_in

  def filter
  end

  def viewfilter
  end

  def afilter
    @students = Student.where("cgpa >= ?", params[:mincgpa].to_f).where("cgpa <= ?", params[:maxcgpa].to_f).where("abacklog <= ?", params[:abacklog].to_i)
    if(params[:placed] && params[:notplaced])

    else
      if(params[:placed])
        @students = @students.where(:placed => true)
      end
      if(params[:notplaced])
      @students = @students.where(:placed => false)
      end
    end
    render :viewfilter, :students => @students
  end

  def sendemail
    params[:studentslist].each do |s|
      student = Student.find(s)
      NotificationMailer.selected(student, params[:mailcontent]).deliver
    end

  end

  private

  def confirm_logged_in
    unless session[:admin_id]
      flash[:notice] = "please login"
      redirect_to(access_login_path)
    end
  end
end
