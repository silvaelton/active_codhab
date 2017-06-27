module ActiveCodhab
  module Cadastre
    module HandleSituation
      class SituationForm 
        include ActiveModel::Model 

        attr_accessor(
          :cadastre_id,
          :situation_status_id,
          :observation,
          :convocation_id,
          :staff_id
        )

        validates :cadastre_id, :situation_status_id, :observation, :convocation_id, presence: true


      end
    end
  end
end