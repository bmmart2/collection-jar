class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :recoverable

  has_many :videogames, dependent: :destroy
  has_many :vinyls, dependent: :destroy
  has_many :cards, dependent: :destroy
  validates :fname, :lname, :presence => true

end
