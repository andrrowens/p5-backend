class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :plant_name
      t.string :description
      t.string :image
      t.string :city
      t.string :state
      t.integer :zipcode
      t.belongs_to :user
      t.belongs_to :plant

      t.timestamps
    end
  end
end
