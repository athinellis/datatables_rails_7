json.extract! employee, :id, :role_id, :department_id, :employeeName, :employeeEmail, :employeeMobile, :employeeStartDate, :employeeEndDate, :employeeStatus, :employeeComments, :carNumber, :created_at, :updated_at
json.url employee_url(employee, format: :json)
