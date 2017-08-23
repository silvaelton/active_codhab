class CreateActiveCodhabCorePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.core_permissions' do |t|

      t.string  :name 
      t.text    :description 
      t.string  :code 
      t.integer :system_id 
      
      t.timestamps
    end

  end
end
