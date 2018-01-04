class CreateChatmessages < ActiveRecord::Migration[5.1]
  def change
    create_table :chatmessages do |t|

      t.timestamps
    end
  end
end
