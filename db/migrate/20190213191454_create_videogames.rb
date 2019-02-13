class CreateVideogames < ActiveRecord::Migration[5.2]
  def change
    create_table :videogames do |t|
      t.string :title
      t.string :publisher
      t.integer :condition
      t.string :platform
      t.string :year
      t.string :upc
      t.timestamps
    end
  end
end
