class CreateActiveCodhabCoreGroupPermissions < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.core_group_permissions' do |t|

      t.string :name
      t.text   :description
      t.text   :permission_ids, array: true 
      
      t.timestamps
    end
  end
end
