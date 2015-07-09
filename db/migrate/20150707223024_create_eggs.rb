class CreateEggs < ActiveRecord::Migration
  def change
    create_table :eggs do |t|
      t.string :color_id
      t.integer :price
      t.belongs_to :animal, index: true, foreign_key: true
      t.belongs_to :income, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
