class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 5 }
  validates_uniqueness_of :list_id, scope: [:movie_id]
end
