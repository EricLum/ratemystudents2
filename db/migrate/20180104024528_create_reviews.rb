class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :scholasticity
      t.integer :discipline
      t.integer :attitude
      t.string :description
      t.integer :student_id
      t.timestamps
    end
  end
end
