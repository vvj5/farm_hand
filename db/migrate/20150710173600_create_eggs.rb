class CreateEggs < ActiveRecord::Migration
  def change
    create_table :eggs do |t|
      t.string :color
      t.integer :quantity
      t.belongs_to :animal, index: true, foreign_key: true
      t.belongs_to :inventory

      t.timestamps null: false
    end
  end
end
