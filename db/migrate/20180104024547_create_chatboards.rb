class CreateChatboards < ActiveRecord::Migration[5.1]
  def change
    create_table :chatboards do |t|

      t.timestamps
    end
  end
end
