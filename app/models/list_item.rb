class ListItem < ApplicationRecord
  belongs_to :list, inverse_of: :list_items
  belongs_to :videogame
end
