class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.belongs_to :comic
      t.integer :first_appearance
      t.string :alter_ego
      t.string :location
      t.text :bio

      t.timestamps
    end
  end
end
