class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :interest
      t.string :bio
      t.integer :profile_index, default: 0

      t.belongs_to :user
      t.timestamps
    end
  end
end
