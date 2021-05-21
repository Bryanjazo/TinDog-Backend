class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.belongs_to :users
      t.belongs_to :conversations
      t.integer :supper_like
      t.integer :like
      t.integer :dislike
      t.timestamps
    end
  end
end
