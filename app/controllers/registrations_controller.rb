class RegistrationsController < Devise::RegistrationsController
    
      private
    
      def sign_up_params
        params.require(:user).permit(:first_name, :last_name, :phn_no, :email, :password, :password_confirmation, :address, :role, :active, :date_of_birth)
      end
    
      def account_update_params
        params.require(:user).permit(:first_name, :last_name, :phn_no, :address, :role, :active, :date_of_birth,
        employee_attributes: [ :id, :fname, :lname, :emp_no, :date_of_joining, :date_of_termination, :department, :designation, :lead, :manager ])
      end
    end