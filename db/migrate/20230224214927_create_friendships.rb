class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|
      t.belongs_to :friend_a, null: false, foreign_key: true
      t.belongs_to :friend_b, null: false, foreign_key: true

      t.timestamps
    end
  end
end
