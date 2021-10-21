class CreateComics < ActiveRecord::Migration[6.1]
  def change
    create_table :comics do |t|
      t.string :name
      t.integer :number
      t.integer :volume
      t.string :publisher
      t.string :creator

      t.timestamps
    end
  end
end
