class CreateChampionships < ActiveRecord::Migration[7.0]
  def change
    create_table :championships do |t|
      t.string :name
      t.references :activity, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
