class ChangeVideoGameColumns < ActiveRecord::Migration[5.2]
  def change
      rename_column :videogames, :upc, :genre
  end
end
