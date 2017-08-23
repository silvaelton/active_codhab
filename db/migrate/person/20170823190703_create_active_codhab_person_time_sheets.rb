class CreateActiveCodhabPersonTimeSheets < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.person_time_sheets' do |t|

      t.integer :month 
      t.integer :year 
      t.integer :creator_id 
      t.text    :exception_days
      t.string  :exception_days_text
      
      t.text    :exception_before_noon
      t.string  :exception_before_noon_text

      t.text    :exception_afternoon
      t.string  :exception_afternoon_text
      
      t.boolean :status, default: true 
      

      t.timestamps
    end
  end
end
