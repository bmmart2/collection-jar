class Videogame < ApplicationRecord
  belongs_to :user
  has_many :list_items
  has_many :lists,        through: :list_items
  validates :title, :presence => true

  def self.import(file)
    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      Videogame.create! row.to_hash
    end
  end
end
