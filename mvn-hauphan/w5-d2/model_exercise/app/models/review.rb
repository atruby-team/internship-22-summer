class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :book, counter_cache: :views

  validates :title, presence: true
  validates :body, presence: true
  validates :rating, numericality: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
