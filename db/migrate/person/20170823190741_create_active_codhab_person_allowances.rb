class CreateActiveCodhabPersonAllowances < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.person_allowances' do |t|

      t.date    :date 
      t.integer :staff_id 
      t.boolean :status, default: false 
      t.integer :leader_id 
      t.text    :leader_observation 
      t.text    :staff_observation

      t.timestamps
    end
  end
end
