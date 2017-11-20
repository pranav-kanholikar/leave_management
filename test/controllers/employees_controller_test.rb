require 'test_helper'

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
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { active: @employee.active, date_of_joining: @employee.date_of_joining, date_of_termination: @employee.date_of_termination, department: @employee.department, designation: @employee.designation, emp_no: @employee.emp_no, fname: @employee.fname, lead: @employee.lead, lname: @employee.lname, manager: @employee.manager } }
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
    patch employee_url(@employee), params: { employee: { active: @employee.active, date_of_joining: @employee.date_of_joining, date_of_termination: @employee.date_of_termination, department: @employee.department, designation: @employee.designation, emp_no: @employee.emp_no, fname: @employee.fname, lead: @employee.lead, lname: @employee.lname, manager: @employee.manager } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
