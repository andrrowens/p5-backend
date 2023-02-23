class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :cycle
      t.string :watering
      t.string :sunlight
      t.string :image

      t.timestamps
    end
  end
end
