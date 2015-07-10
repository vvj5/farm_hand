class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.integer :high_temp
      t.integer :low_temp
      t.integer :wind_speed
      t.time :sunrise
      t.time :sunset
      t.integer :precipitation
      t.belongs_to :farm, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
