class CreateVideogames < ActiveRecord::Migration[5.2]
  def change
    create_table :videogames do |t|
      t.string :title
      t.string :publisher
      t.string :platform
      t.integer :year
      t.integer :condition
      t.string :upc

      t.timestamps
    end
  end
end
