class CreateActiveCodhabPersonStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.person_staffs' do |t|

      t.string  :code 
      t.string  :name 
      t.string  :cpf 
      t.string  :rg 
      t.string  :rg_org 
      t.string  :blood_type 
      t.date    :born 
      t.string  :avatar
      t.string  :personal_image 
      t.string  :branch_line 
      t.string  :curriculum 
      t.string  :email 
      t.time    :start_hour 
      t.time    :end_hour 
      t.date    :contract_date 
      t.date    :shutdown_date 
      t.boolean :wekeend_access, default: false 
      t.boolean :status, default: false 
      t.boolean :administrator, default: false
      t.integer :gender_id
      t.string  :password 
      t.integer :job_id 
      t.boolean :terms_use, default: false 
      t.boolean :introduce, default: false 
      t.string  :private_email
      t.integer :civil_state_id 
      t.string  :birth_place 
      t.integer :born_uf_id
      t.integer :contract_type_id 

      t.string  :address
      t.string  :address_complement 
      t.string  :burgh 

      t.integer :state_id  
      t.integer :city_id

      t.string  :cep 
      
      t.string  :telephone  
      t.string  :celphone

      t.string  :ctps_number
      t.string  :ctps_serial
      t.integer :ctps_uf_id
      
      t.string  :pis_pasep_number
      t.date    :pis_pasep_date

      t.string  :electoral_title_number 
      t.string  :electoral_title_zone
      t.string  :electoral_title_section
      t.integer :electoral_title_uf_id
      
      t.string  :bank_number
      t.string  :bank_agency_number
      t.string  :bank_account_number 
      t.string  :spouse_name 

      t.integer :education_background_id 

      t.string  :graduation 
      t.string  :mobile_user_token
      t.string  :mobile_push_token

      t.string  :resolution 
      t.date    :resolution_date 

      t.timestamps
    end
  end
end
