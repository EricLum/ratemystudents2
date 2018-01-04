class CreateChatmessages < ActiveRecord::Migration[5.1]
  def change
    create_table :chatmessages do |t|
      t.integer :chatboard_id
      t.integer :user_id
      t.string :message
      t.timestamps
    end
  end
end
