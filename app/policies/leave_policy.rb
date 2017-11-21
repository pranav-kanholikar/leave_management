class LeavePolicy < ApplicationPolicy
    def index?
      true
    end
   
    def create?
      user.present?
    end
   
    def update?
        if user.present? && user.role == "Employer"
            return true 
        elsif user.present? && user.role == "Employee"
            puts "employee not allowed"
            return false
        end
    end
   
    def destroy?
       if user.present? && user.role == "Employer"
            return true 
        elsif user.present? && user.role == "Employee"
            puts "employee not allowed"
            return false
        end
    end
   
    private
   
      def leave
        record
      end
  end