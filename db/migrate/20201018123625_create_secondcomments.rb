class CreateSecondcomments < ActiveRecord::Migration[6.0]
  def change
    create_table :secondcomments do |t|
      t.integer :user_id
      t.integer :womantweet_id
      t.text :text

      t.timestamps
    end
  end
end
