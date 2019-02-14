class Item < ApplicationRecord

  attr_accessor :name

  belongs_to :user
end
