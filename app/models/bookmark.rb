class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # respond_to :bookmarks

  validates :comment, length: {minimum: 6, message: "Cannot be 6 characters or fewer"}
  validates :movie_id, uniqueness: {scope: :list_id}
end
