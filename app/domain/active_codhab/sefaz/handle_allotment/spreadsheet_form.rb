module ActiveCodhab
  module Sefaz
    module HandleAllotment
      class AllotmentForm
        include ActiveModel::Model 
        
        attr_acessor(
          :file
        )

        validates :file, presence: true
        validate  :csv_bulk_is_valid?

        def save
          if valid?
            service = ExemptionService.new(self)
            service.add_bulk_exemption
          end
        end

        private

        def csv_bulk_is_valid?
          file.each do |row|
            return false if !ExemptionForm.new(row).valid?
          end
        end
      end
    end
  end
end