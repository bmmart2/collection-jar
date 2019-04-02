class List < ApplicationRecord
  has_many :list_items,   inverse_of: :list
  has_many :videogames,        through: :list_items

  # This allows ListItems to be created at the same time as the List,
  # but will only create it if the :item_id attribute is present
  accepts_nested_attributes_for :list_items, reject_if: proc { |attr| attr[:item_id].blank? }
end
