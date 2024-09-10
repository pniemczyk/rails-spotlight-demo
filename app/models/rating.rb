class Rating < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  validates :score, presence: true
  validates :score, presence: true, inclusion: { in: 0..5 }
  validates :user_id, uniqueness: { scope: :movie_id, message: 'can only rate a movie once' }
end
