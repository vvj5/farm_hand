class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :chickenltbrownlayer, default: 0
      t.integer :chickendrkbrnlayer, default: 0
      t.integer :chickenwhitelayer, default: 0
      t.integer :chickenblugrnlayer, default: 0
      t.integer :chickenbantamlayer, default: 0
      t.integer :duck, default: 0
      t.integer :goose, default: 0
      t.integer :turkey, default: 0
      t.integer :guinea, default: 0
      t.integer :quail, default: 0
      t.integer :chickenltbrownegg, default: 0
      t.integer :chickendrkbrnegg, default: 0
      t.integer :chickenwhiteegg, default: 0
      t.integer :chickenblugrnegg, default: 0
      t.integer :chickenbantamegg, default: 0
      t.integer :duckegg, default: 0
      t.integer :gooseegg, default: 0
      t.integer :turkeyegg, default: 0
      t.integer :guineaegg, default: 0
      t.integer :quailegg, default: 0

      t.timestamps null: false
    end
  end
end
