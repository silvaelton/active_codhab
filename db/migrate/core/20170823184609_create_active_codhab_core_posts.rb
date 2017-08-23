class CreateActiveCodhabCorePosts < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.core_posts' do |t|

      t.string  :title 
      t.text    :content
      t.boolean :status, default: true
      t.boolean :special, default: true 
      t.integer :creator_id
      
      t.timestamps
    end
  end
end
