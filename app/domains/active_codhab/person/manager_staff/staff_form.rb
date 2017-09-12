module ActiveCodhab
  module Person
    module ManagerStaff
      class StaffForm
        
        include ActiveModel::Model 

        attr_accessor(
          :name,
          :cpf,
          :code
        )

        validates :name, presence: true


        def save
          if valid?

          else
            return false
          end
        end
      end
    end
  end
end