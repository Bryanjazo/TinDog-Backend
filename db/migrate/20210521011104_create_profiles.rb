class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.boolean :member
      t.string :gender
      t.string :interest
      t.string :bio
      t.belongs_to :user
      t.timestamps
    end
  end
end
