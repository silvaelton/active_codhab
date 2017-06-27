module ActiveCodhab
  module Cadastre
    module HandleSituation
      class SituationRepository < ActiveRecord::Base
        self.table_name = 'extranet.candidate_cadastre_situations'


        def find_by_cadastre cadastre_id
          self.where(cadastre_id: cadastre_id).order(created_at: :asc)
        end

        def new_situations_of_cadastre cadastre_id
          self.new({cadastre_id: cadastre_id})
        end

        def current_situation_by_cadastre cadastre_id
          self.where(cadastre_id: cadastre_id).order(created_at: :asc).last rescue nil
        end


        def save situation
        
          self.create.tap do |situation|
            situation.cadastre_id         = situation.cadastre_id
            situation.situation_status_id = situation.situation_status_id
            situation.observation         = situation.observation 
            situation.staff_id            = situation.staff_id 
            situation.convocation_id      = situation.convocation_id
          end
        
        end
         
      end
    end
  end
end
