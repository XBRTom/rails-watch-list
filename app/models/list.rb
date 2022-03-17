class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, :throught => :bookmarks, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
