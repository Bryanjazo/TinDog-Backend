class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.belongs_to :user
      t.belongs_to :profile
      t.boolean :like
      t.boolean :super_like
      t.boolean :dislike
      t.timestamps
    end
  end
end
