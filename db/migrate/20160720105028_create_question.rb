class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :Question do |t|
      t.string :content, :null=>false
      t.integer :user_id, :null=>false
      t.timestamps(null: false)
    end
  end
end
