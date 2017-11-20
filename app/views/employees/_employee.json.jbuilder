json.extract! employee, :id, :fname, :lname, :emp_no, :date_of_joining, :date_of_termination, :department, :designation, :lead, :manager, :active, :created_at, :updated_at
json.url employee_url(employee, format: :json)
