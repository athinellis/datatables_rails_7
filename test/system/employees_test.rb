require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Carnumber", with: @employee.carNumber
    fill_in "Department", with: @employee.department_id
    fill_in "Employeecomments", with: @employee.employeeComments
    fill_in "Employeeemail", with: @employee.employeeEmail
    fill_in "Employeeenddate", with: @employee.employeeEndDate
    fill_in "Employeemobile", with: @employee.employeeMobile
    fill_in "Employeename", with: @employee.employeeName
    fill_in "Employeestartdate", with: @employee.employeeStartDate
    check "Employeestatus" if @employee.employeeStatus
    fill_in "Role", with: @employee.role_id
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Carnumber", with: @employee.carNumber
    fill_in "Department", with: @employee.department_id
    fill_in "Employeecomments", with: @employee.employeeComments
    fill_in "Employeeemail", with: @employee.employeeEmail
    fill_in "Employeeenddate", with: @employee.employeeEndDate
    fill_in "Employeemobile", with: @employee.employeeMobile
    fill_in "Employeename", with: @employee.employeeName
    fill_in "Employeestartdate", with: @employee.employeeStartDate
    check "Employeestatus" if @employee.employeeStatus
    fill_in "Role", with: @employee.role_id
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
