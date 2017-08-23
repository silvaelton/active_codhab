class CreateActiveCodhabPersonSectors < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.person_sectors' do |t|

      t.string :name 
      t.string :acron 
      t.string :prefex
      
      t.integer :father_id 
      t.integer :responsible_id
      
      t.boolean :status, default: true 
      t.string  :code 
      t.string  :color

      t.timestamps
    end
  end
end
