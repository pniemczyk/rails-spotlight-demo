class Movie < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :actors
  has_many :ratings, dependent: :destroy

  validates :title, uniqueness: true
end
