module ActiveCodhab
  module Sefaz
    module HandleAllotment
      class AllotmentForm
        include ActiveModel::Model 

        attr_accessor(
          :description
        )

        validates :observation, presence: true


        def save
          AllotmentRepository.new(self).add if valid?
        end

        def update
          AllotmentRepository.new(self).update if valid?
        end

        def destroy
          AllotmentRepository.new(self).destroy
        end
        
        def self.find id
          AllotmentRepository.new.find(id) rescue nil
        end
      end
    end
  end
end