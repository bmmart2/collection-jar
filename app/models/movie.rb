class Movie < ApplicationRecord
  belongs_to :user
  validates :title, :presence => true
  def self.import(file)
    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      Movie.create! row.to_hash
    end
  end
end
