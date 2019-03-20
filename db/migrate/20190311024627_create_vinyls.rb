class CreateVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :vinyls do |t|
      t.string :title
      t.string :artist
      t.string :year
      t.integer :condition
      t.string :label

      t.timestamps
      add_index :vinyls, :user
    end
  end
end
