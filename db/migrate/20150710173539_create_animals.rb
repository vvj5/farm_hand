class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.belongs_to :farm, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
