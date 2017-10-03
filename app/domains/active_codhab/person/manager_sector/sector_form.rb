require_dependency 'active_codhab/application_form'


module ActiveCodhab
  module Person::ManagerSector
    class SectorForm < ActiveCodhab::ApplicationForm

      attribute :id,   Integer
      attribute :name, Integer
      attribute :acron, String
      attribute :prefex, String
      attribute :father_id, Integer
      attribute :responsible_id, Integer
      attribute :code, String
      attribute :color, String
      attribute :status, Boolean

      validates :name, :acron, :prefex, presence: true
      validates :name, :prefex, 'active_codhab/uniqueness': { model: ActiveCodhab::Person::Sector }

      def initialize(attributes = {})
        @model_name = 'ActiveCodhab::Person::Sector'

        self.attributes = attributes

        super()
      end

      def save
        valid? ? persist! : false
      end

    end
  end
end
