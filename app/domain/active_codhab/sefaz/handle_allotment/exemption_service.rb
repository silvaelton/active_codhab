
module ActiveCodhab
  module Sefaz
    module HandleAllotment
      class AllotmentService

        def add_bulk_exemption record
          csv = record.file
          
          csv.each do |row|
            exemption = ExemptionRepository.new
            exemption.add({
              field1: row[0]
              field1: row[1]
              field1: row[2]
              field1: row[3]
            })
          end
        end

      end
    end
  end
end