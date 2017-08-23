class CreateActiveCodhabCoreAlerts < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.core_alerts' do |t|

      t.string  :title 
      t.text    :content 
      t.boolean :priority, default: true
      
      t.timestamps
    end
  end
end
