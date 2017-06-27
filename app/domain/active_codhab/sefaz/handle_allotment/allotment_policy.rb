require_dependency 'active_codhab/sefaz/handle_allotment/allotment_repository'

module ActiveCodhab
  module Sefaz
    module HandleAllotment
      class AllotmentPolicy
        
        def initialize(current_user)
        end

        def new?
          AllotmentRepository.new
        end

      end
    end
  end
end