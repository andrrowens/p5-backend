class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :watering
      t.string :sunlight
      t.string :environment
      t.text :notes
      t.string :image

      t.timestamps
    end
  end
end
