class CreateComics < ActiveRecord::Migration[6.1]
  def change
    create_table :comics do |t|
      t.string :name
      t.integer :number
      t.integer :volume
      t.string :publisher
      t.string :writer
      t.string :description

      t.timestamps
    end
  end
end
