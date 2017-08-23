module ActiveCodhab
  module Sefaz
    module HandleAllotment
      class AllotmentForm
        include ActiveModel::Model

        attr_accessor(
          :id
          :staff_id
          :error_message
          :send_date
          :send_staff_id
          :protocol_return
          :exemption_type
          :notifiers
          :cnpj_notifiers
          :observation
          :send_status_id
          :send_type
        )

        validates :exemption_type, :notifiers, :cnpj_notifiers, presence: true
        validates :observation, presence: true, if: 'send_type != 1'

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
