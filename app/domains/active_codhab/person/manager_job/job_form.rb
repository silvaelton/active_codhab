require_dependency 'active_codhab/application_form'

module ActiveCodhab
  module Person::ManagerJob
    class JobForm < ActiveCodhab::ApplicationForm

      attribute :id,   Integer
      attribute :name, Integer
      attribute :code, String
      attribute :status, Boolean
      attribute :salary, Float
      attribute :function_code, String

      validates :name, :code, :status, :salary, :function_code, presence: true
      validates :name, 'active_codhab/uniqueness': { model: ActiveCodhab::Person::Job }

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
