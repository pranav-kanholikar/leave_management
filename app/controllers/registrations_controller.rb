class RegistrationsController < Devise::RegistrationsController
    
      private
    
      def sign_up_params
        puts ">>>>>>>>>>>>>>>>"
        params.require(:user).permit(:first_name, :last_name, :phn_no, :email, :password, :password_confirmation, :address, :role, :active, :date_of_birth)
      end
    
      def account_update_params
        params.require(:user).permit(:first_name, :last_name, :phn_no, :address, :role, :active, :date_of_birth)
      end
    end