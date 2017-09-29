module ActiveCodhab
  module Person
    module ManagerStaff
      class StaffForm



        def new
          @staff = Staff.where(sector_id: current_user.sector_id).new
          @staff_form = StaffForm.new(@staff, current_user)
        end

        def create
          @staff = Staff.where(sector_id: current_user.sector_id).new(set_params)
          @staff_form = StaffForm.new(@staff, current_user)

          if @staff_form.save

          else

          end
        end

        def update
          @staff = Staff.where(sector_id: 1).find(params[:id])
          @staff_form = StaffForm.new(@staff, current_user)

          if @staff_form.save 
          else
          end
          
        end

        
      end
    end
  end
end

