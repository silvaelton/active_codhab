module ActiveCodhab
  module Sefaz
    module HandleAllotment
      class AllotmentRepository < ActiveCodhab::Sefaz::Allotment
        
        def initialize(attributes = {})
        end

        def find_by id 
          find(id)
        end

        def add allotment
          @new_record = self.new.tap do |value|
            value.observation = allotment.observation
          end

          @new_record.save
        end


      end
    end
  end
end