class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :list_items do |t|

      t.timestamps
    end
  end
end
