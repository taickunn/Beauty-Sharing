class CreateMantweets < ActiveRecord::Migration[6.0]
  def change
    create_table :mantweets do |t|
      t.string  :name,                     null: false
      t.text    :description,              null: false
      t.references :user,                  null: false, forgin_key: true
      
      t.timestamps
    end
  end
end
