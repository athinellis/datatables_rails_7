module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:employee_id] = user.id
    start_log('Log in Employee')
  end


  # Returns the current logged-in user (if any).
  def current_employee
    @current_employee ||= Employee.find_by(id: session[:employee_id])
  end


  # Returns true if the admin user is logged in, false otherwise.
  def logged_in_admin?
    #!current_user.nil?
    current_employee.role.admin?
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in_salesman?
    current_employee.role.salesman? && current_employee.employeeStatus.eql?(true)
  end

  def logged_in_salesman_trimed?
    logged_in_salesman? && current_employee.department.company.trimed?
  end

  def logged_in_salesman_growers?
    logged_in_salesman? && current_employee.department.company.GrowersCup?
  end

  def logged_in_salesman_natures?
    logged_in_salesman? && current_employee.department.company.NaturesPath?
  end

  def logged_in_headofsales?
    current_employee.role.headofSales?
  end

  def logged_in_service?
    current_employee.role.constractions?
  end


  def logged_in_headofstorehouse?
    current_employee.role.headofStorehouse?
  end

  def logged_in_storekeeper?
    current_employee.role.storekeeper?  && current_employee.employeeStatus.eql?(true)
  end


  def logged_in_headofconstranctions?
    current_employee.role.headofConstractions?
  end

  def logged_in_constranctions?
    current_employee.role.constractions?
  end

  def logged_in_headofImports?
    current_employee.role.headofImports?
  end

  def logged_in_headofDesign?
    current_employee.role.headofDesign?  && current_employee.employeeStatus.eql?(true)
  end



  # Returns true if the user is logged in, false otherwise.
  def logged_in_storehouse?
    current_employee.role.headofStorehouse?
    #!current_user_storehouse.nil?
  end

  def logged_in_printer?
    current_employee.role.printer?
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in_accountant?
    current_employee.role.accountant?
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in_designer?
    current_employee.role.designer?
  end




  def log_out

    start_log('Log out')

    @current_employee = nil

    reset_session

  end


  def not_activated(exception)
    redirect_to "/"
  end


  def start_log(action)

    logger.debug "#{action} from employee : #{current_employee.id}"

  end


end