module ActiveCodhab
  module Sefaz
    module HandleAllotment
      class ExemptionRepository < ActiveCodhab::Sefaz::Allotment
        

        def find_by id 
          find(id)
        end

        def add_by_row_csv row
        end

        def add 
        end

        def update
        end

        def destroy
        end
        
      end
    end
  end
end