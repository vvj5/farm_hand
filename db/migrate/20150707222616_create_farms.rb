class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.integer :animal_id
      t.integer :income_id
      t.integer :expense_id
      t.integer :weather_id

      t.timestamps null: false
    end
  end
end
