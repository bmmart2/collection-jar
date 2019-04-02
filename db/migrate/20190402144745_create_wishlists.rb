class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.string :name
      t.string :item_type
      t.string :other

      t.timestamps
    end
  end
end
