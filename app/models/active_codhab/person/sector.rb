module ActiveCodhab
  module Person
    class Sector < ApplicationRecord
      self.table_name = 'extranet.person_sectors'

      belongs_to :father, class_name: "ActiveCodhab::Person::Sector", foreign_key: 'father_id'

    end
  end
end
