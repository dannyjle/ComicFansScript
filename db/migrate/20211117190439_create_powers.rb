class CreatePowers < ActiveRecord::Migration[6.1]
  def change
    create_table :powers do |t|
      t.string :category
      t.string :name
      t.string :description
      t.string :known_users
      t.string :limitations

      t.timestamps
    end
  end
end
