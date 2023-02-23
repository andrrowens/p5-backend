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
      t.belongs_to :plant, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
