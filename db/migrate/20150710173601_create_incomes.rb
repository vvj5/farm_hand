class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.integer :quantity
      t.integer :amount
      t.belongs_to :farm, index: true, foreign_key: true
      t.belongs_to :egg, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
