class CreateActiveCodhabCoreSystems < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.core_systems' do |t|

      t.string  :name 
      t.boolean :status, default: true 

      t.timestamps
    end
  end
end
