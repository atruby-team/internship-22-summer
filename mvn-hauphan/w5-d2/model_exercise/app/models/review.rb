class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :book, counter_cache: :views

  validates :title, presence: true
  validates :body, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
