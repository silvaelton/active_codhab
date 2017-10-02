FactoryGirl.define do

  factory :new_sector, class: 'ActiveCodhab::Person::ManagerSector::SectorForm' do

    factory :sector  do
      name    { Faker::Job.field }
      code    { Faker::Number.number(5) }
      acron   { Faker::Superhero.prefix }
      prefex  { Faker::Number.number(3).to_s }
      status  { true }
      color   {Faker::Color.hex_color}

      factory :child_sector do
        father_id { ActiveCodhab::Person::Sector.last.id }
      end
    end

    factory :edited_sector do
      name    { Faker::Job.field }
      initialize_with { ActiveCodhab::Person::Sector.find_or_create_by(id: 1) }
    end

  end
end
