class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employer = Employer.find_by(id: params[:employer_id])
    @employee = Employee.new
    @user = User.find_by(id: params[:user_id])
  end
  

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create 
    # @user = User.create(user_params)                 
    @employer = Employer.find_by(id: params[:employer_id])
    @employee = @employer.employees.new(employee_params)
    # @user = User.find_by(id: params[:user_id])
    # @employee = @user.employee.new(employee_params)
    respond_to do |format|
      if @employee.save
        puts @employer.inspect
        format.html { redirect_to employer_employee_path(id: params[:employer_id]), notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employer_employee_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      puts params.inspect
      # @employee = Employee.find(params[:id])
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:fname, :lname, :emp_no, :date_of_joining, :date_of_termination, :department, :designation, :lead, :manager, :active, :user_id, :email)
    end

    def user_params
      params.require(:employee).permit(:fname, :lname, :emp_no, :date_of_joining, :date_of_termination, :department, :designation, :lead, :manager, :active, :user_id, :email)
    end

  end


