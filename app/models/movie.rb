class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :lists, through: :bookmarks # if i want to acces a list through a movie
  validates :title, :overview, uniqueness: true, presence: true
end
