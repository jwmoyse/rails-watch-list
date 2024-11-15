class Movie < ApplicationRecord

  validates :name, :comments, uniqueness: true

end
