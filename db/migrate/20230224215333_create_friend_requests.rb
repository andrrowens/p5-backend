class CreateFriendRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_requests do |t|
      t.belongs_to :sender, null: false, foreign_key: true
      t.belongs_to :receiver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
