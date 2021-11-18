class CreatePowers < ActiveRecord::Migration[6.1]
  def change
    create_table :powers do |t|
      t.string :name
      t.string :category
      t.belongs_to :character
      t.text :description
      t.text :limitations
      t.string :known_users
      t.timestamps
    end
  end
end
