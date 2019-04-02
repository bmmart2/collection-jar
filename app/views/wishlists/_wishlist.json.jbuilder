json.extract! wishlist, :id, :name, :item_type, :other, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
