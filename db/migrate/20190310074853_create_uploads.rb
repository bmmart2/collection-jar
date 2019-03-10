class CreateUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :uploads do |t|
      t.string :title
      t.string :publisher
      t.string :platform
      t.integer :year
      t.integer :condition
      t.integer :upc

      t.timestamps
    end
  end
end
