class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :point, default: 0
      t.integer :votable_id
      t.integer :votable_type
      t.integer :user_id, null: false

      t.timestamps(null: false)
    end
  end
end
