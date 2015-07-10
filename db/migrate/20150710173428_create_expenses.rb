class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.integer :amount
      t.string :category
      t.belongs_to :farm, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
