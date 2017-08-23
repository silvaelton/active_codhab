class CreateActiveCodhabPersonVocations < ActiveRecord::Migration[5.1]
  def change
    create_table 'extranet.person_vocations' do |t|

      t.timestamps
    end
  end
end
