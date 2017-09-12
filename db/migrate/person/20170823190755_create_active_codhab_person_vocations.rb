class CreateActiveCodhabPersonVocations < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.person_vocations' do |t|

      t.date    :started_at 
      t.date    :ended_at 
      t.integer :assignment
      t.integer :period 
      t.boolean :enjoy, default:  false
      t.integer :staff_id
      t.boolean :advance_money, default:  false
      t.integer :leader_id 
      t.text    :leader_observation 
      t.boolean :leader_authorize, default:  false 
      t.boolean :canceled, default:  false
      t.date    :canceled_date 
      
      t.timestamps
    end
  end
end
