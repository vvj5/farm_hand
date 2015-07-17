class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :chickenltbrownlayer
      t.integer :chickendrkbrnlayer
      t.integer :chickenwhitelayer
      t.integer :chickenblugrnlayer
      t.integer :chickenbantamlayer
      t.integer :duck
      t.integer :goose
      t.integer :turkey
      t.integer :guinea
      t.integer :quail
      t.integer :chickenltbrownegg
      t.integer :chickendrkbrnegg
      t.integer :chickenwhiteegg
      t.integer :chickenblugrnegg
      t.integer :chickenbantamegg
      t.integer :duckegg
      t.integer :gooseegg
      t.integer :turkeyegg
      t.integer :guineaegg
      t.integer :quailegg

      t.timestamps null: false
    end
  end
end
