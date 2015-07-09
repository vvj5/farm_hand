class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.integer :high_temp
      t.integer :low_temp
      t.integer :wind_speed
      t.integer :precipitation
      t.integer :sunrise
      t.integer :sunset
      t.integer :location_id
      t.belongs_to :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
