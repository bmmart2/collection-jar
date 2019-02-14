class Videogame < ApplicationRecord

belongs_to :user

attr_accessor :title, :platform, :upc, :condition, :publisher, :year

end
