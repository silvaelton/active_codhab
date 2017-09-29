require 'virtus'
require 'active_codhab/application_form'

module ActiveCodhab
  module Person::ManagerJob
    class JobForm < ActiveCodhab::ApplicationForm

      include ActiveModel::Model
      include ActiveCodhab::FormConcern
      include Virtus.model

      attribute :id,   Integer
      attribute :name, Integer
      attribute :code, String
      attribute :status, Boolean
      attribute :salary, Float
      attribute :function_code, String

      validates :name, :code, :status, :salary, :function_code, presence: true 
      validates :name, unique_record: { model: ActiveCodhab::Person::Job }


      def initialize(attributes = {})
        @model_name = 'ActiveCodhab::Person::Job'

        self.attributes = attributes

        super()
      end

      def save
        valid? ? persist! : false
      end



    end
  end
end