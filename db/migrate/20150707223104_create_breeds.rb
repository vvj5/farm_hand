class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :name
      t.integer :egg_id
      t.belongs_to :animal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
