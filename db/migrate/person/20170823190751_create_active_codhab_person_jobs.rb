class CreateActiveCodhabPersonJobs < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.person_jobs' do |t|

      t.string  :name 
      t.string  :code 
      t.boolean :status, default: false 
      t.float   :salary
      t.sting   :function_code 

      t.timestamps
    end
  end
end
