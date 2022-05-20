class Book < ApplicationRecord
  belongs_to :author
  belongs_to :supplier
  has_many :book_orders
  has_many :reviews

  scope :number_reviews, -> { select('books.*', 'count(reviews.id) AS count').left_joins(:reviews).group('books.id') }
end
