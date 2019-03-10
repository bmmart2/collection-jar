class Upload < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      Upload.create! row.to_hash
    end
  end
end
