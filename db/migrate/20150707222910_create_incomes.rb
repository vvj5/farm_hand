class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.integer :egg_id
      t.integer :quantity_sold
      t.integer :amount
      t.belongs_to :farm, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
