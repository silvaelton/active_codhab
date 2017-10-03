module ActiveCodhab
  module FormConcern

    def set_attributes
      self.attributes.select {|k,v| !v.nil? }
    end

    def find(record_id)
      @record = @model_name.to_s.constantize.find(record_id.to_i)
      self.attributes = @record.attributes
    end

    def persist!
      @record.present? ? update! : create!
    end

    def create!
      @record = @model_name.to_s.constantize.new(set_attributes)
      @record.save
      @id = @record.id

      return true
    end

    def update!
      @record.update_attributes(set_attributes)

      return true
    end

  end
end
