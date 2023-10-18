class SessionsController < ApplicationController

  def new

  end

  # POST apo to button log in
  def create

    employee = Employee.find_by(employeeEmail: params[:session][:email].downcase)

    if employee && employee.authenticate(params[:session][:password])

      # Log the user in
      log_in employee


      redirect_to employees_path if logged_in_admin?


    end

  end


  def destroy

    log_out

    redirect_to root_url

  end


  def check_time(t=Time.now)

    early = Time.new(t.year, t.month, t.day, 4, 00, 0, t.utc_offset)
    late = Time.new(t.year, t.month, t.day, 19, 45, 0, t.utc_offset)

    t.between?(early, late)

  end


end