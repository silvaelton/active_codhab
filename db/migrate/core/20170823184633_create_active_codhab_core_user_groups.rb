class CreateActiveCodhabCoreUserGroups < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.core_user_groups' do |t|

      t.integer :group_id 
      t.integer :user_id
      t.integer :sponsor_id 
      
      t.timestamps
    end
  end
end
