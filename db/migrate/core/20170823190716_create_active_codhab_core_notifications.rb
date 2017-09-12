class CreateActiveCodhabCoreNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.core_notifications' do |t|

      t.integer :user_id 
      t.string  :title 
      t.text    :content 
      t.boolean :read, default: false 
      t.date    :read_date
      t.boolean :priority, default: false 
      
      t.timestamps
    end
  end
end
