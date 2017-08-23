class CreateActiveCodhabCoreNavs < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.core_navs' do |t|

      t.string  :label 
      t.text    :description 
      t.integer :father_id 
      t.boolean :status, default: true 
      t.integer :group_permission_id 
      t.text    :permission_ids, array: true 
      
      t.timestamps
    end
  end
end
