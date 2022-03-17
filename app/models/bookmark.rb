class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # validates :id, presence: true, if: :list_id & :movie_id
  validates :comment, length: { minimum: 6 }
end
