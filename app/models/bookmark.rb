class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }, allow_blank: true
  validates :movie, :list, presence: true # movie :list
  validates :movie, uniqueness: { scope: :list_id, message: "has already been bookmarked in this list" }
end
