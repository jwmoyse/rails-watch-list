class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, :overview, presence: true
  validates :overview, uniqueness: true
  # has_many :bookmarks, dependent: :nullify

  #should NOT destroy self if has BOOKMARKS as children
end
