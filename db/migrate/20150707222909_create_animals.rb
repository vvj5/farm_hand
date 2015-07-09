class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :breed_id
      t.integer :egg_id

      t.timestamps null: false
    end
  end
end
