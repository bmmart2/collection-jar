class AddUserRefsToVideogame < ActiveRecord::Migration[5.2]
  def change
    add_reference :videogames, :user, foreign_key: true
  end
end
