class CreateVideoGames < ActiveRecord::Migration[5.2]
  def change
    create_table :video_games do |t|
      t.string :publisher
      t.string :platform
      t.integer :year
      t.integer :condition
      t.string :upc

      t.timestamps
    end
  end
end
