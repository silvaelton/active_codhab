FactoryGirl.define do

  factory :job, class: 'ActiveCodhab::Person::ManagerJob::JobForm' do
    name    { Faker::Name.name }
    code    { Faker::Number.number(5) }
    status  { true }
    salary  { Faker::Number.decimal(5,2) }
    function_code { Faker::Number.number(2) }
  end

  factory :new_job, class: 'ActiveCodhab::Person::ManagerJob::JobForm' do
  end
  
  factory :edited_job, class: 'ActiveCodhab::Person::ManagerJob::JobForm' do
    name    { Faker::Name.name }
    initialize_with { ActiveCodhab::Person::Job.find_or_create_by(id: 1) }
  end 
end