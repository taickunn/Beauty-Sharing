class CreateSecondfavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :secondfavorites do |t|
      t.integer :user_id
      t.integer :womantweet_id
      t.timestamps
    end
  end
end
