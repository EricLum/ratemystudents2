class CreateChatboards < ActiveRecord::Migration[5.1]
  def change
    create_table :chatboards do |t|
      t.integer :user1_id
      t.integer :user2_id
      t.timestamps
    end
  end
end
