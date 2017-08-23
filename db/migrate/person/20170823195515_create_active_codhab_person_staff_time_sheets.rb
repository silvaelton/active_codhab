class CreateActiveCodhabPersonStaffTimeSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :active_codhab_person_staff_time_sheets do |t|

      t.integer :time_sheet_id 
      t.integer :vocation_id 
      t.text    :allowance_ids, array: true 
      t.integer :staff_id 
      
      t.timestamps
    end
  end
end
