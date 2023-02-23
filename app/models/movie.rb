class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :list, through: :bookmarks

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :overview, presence: true
end
