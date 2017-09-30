require 'virtus'
require 'active_codhab/application_form'

module ActiveCodhab
  module Person::ManagerSector
    class SectorForm < ActiveCodhab::ApplicationForm

      include ActiveModel::Model
      include ActiveModel::Associations
      include ActiveCodhab::FormConcern
      include Virtus.model

      attribute :id,   Integer
      attribute :name, Integer
      attribute :acron, String
      attribute :prefex, String
      attribute :father_id, Integer
      attribute :responsible_id, Integer
      attribute :code, String
      attribute :color, String
      attribute :status, Boolean

      belongs_to :father, required: false, class_name: "ActiveCodhab::Person::ManagerSector::SectorForm", foreign_key: 'father_id'


      validates :name, :acron, :prefex, presence: true
      validates :name, :prefex, unique_record: { model: ActiveCodhab::Person::Sector }


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
