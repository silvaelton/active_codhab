class CreateActiveCodhabPersonEducationTypes < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.person_education_types' do |t|

      t.string  :name
      t.text    :description 
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
