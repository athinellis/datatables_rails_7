require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference("Employee.count") do
      post employees_url, params: { employee: { carNumber: @employee.carNumber, department_id: @employee.department_id, employeeComments: @employee.employeeComments, employeeEmail: @employee.employeeEmail, employeeEndDate: @employee.employeeEndDate, employeeMobile: @employee.employeeMobile, employeeName: @employee.employeeName, employeeStartDate: @employee.employeeStartDate, employeeStatus: @employee.employeeStatus, role_id: @employee.role_id } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { carNumber: @employee.carNumber, department_id: @employee.department_id, employeeComments: @employee.employeeComments, employeeEmail: @employee.employeeEmail, employeeEndDate: @employee.employeeEndDate, employeeMobile: @employee.employeeMobile, employeeName: @employee.employeeName, employeeStartDate: @employee.employeeStartDate, employeeStatus: @employee.employeeStatus, role_id: @employee.role_id } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference("Employee.count", -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
