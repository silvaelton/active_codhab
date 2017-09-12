require "rails_helper"

RSpec.describe 'StaffForm', :type => :model do

  include ActiveCodhab::Person::ManagerStaff
  
  context "registro de dados" do 

    it "registro" do 
        
      staff = ActiveCodhab::Person::ManagerStaff::StaffForm.new

    end

  end

end