class CreateChatboards < ActiveRecord::Migration[5.1]
  def change
    create_table :chatboards do |t|
      t.integer :user_id
      t.integer :user_id2
      t.timestamps
    end
  end
end
