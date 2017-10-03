require "active_model"
require "virtus"
require "active_codhab/form_concern"

module ActiveCodhab
  class ApplicationForm
    attr_accessor :record, :model_name

    include ActiveModel::Model
    include Virtus.model
    include ActiveCodhab::FormConcern

  end
end
