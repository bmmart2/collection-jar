class AddUserRefToVideogames < ActiveRecord::Migration[5.2]
  def change
    add_reference :videogame, :user, foreign_key: true
  end
end
