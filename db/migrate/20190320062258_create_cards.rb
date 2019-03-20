class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :content

      t.timestamps
      add_index :cards, :user
    end
  end
end
