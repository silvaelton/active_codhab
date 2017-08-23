class CreateActiveCodhabCoreUserPermissions < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.core_user_permissions' do |t|

      t.integer :permission_id
      t.integer :user_id 
      t.integer :sponsor_id 
      
      t.timestamps
    end
  end
end
