module ActiveCodhab
  class UniqueRecordValidator < ActiveModel::EachValidator

    def validate_each(record, attribute, parameters = {})
      if unique_record(attribute, record, options[:model])
        record.errors[attribute] << 'attribute is not unique'
      end
    end

    private

    def unique_record(attribute, record, model_name)
      value = model_name.to_s.constantize.find_by("#{attribute.to_s} = ?", record[attribute]) rescue nil
      
      value.nil? ? false : (value.id != record.id ? true : false)
    
    end


  end
end