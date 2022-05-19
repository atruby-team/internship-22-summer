class Author < ApplicationRecord
  has_many :books
  has_many :reviews, through: :books, source: :reviews
  has_many :book_orders, through: :books, source: :book_orders

  scope :take_3_author_most_book_sales, -> { select('authors.*', 'count(book_id) AS count').left_joins(:books, :book_orders).
                                              group('authors.id').order(count: :desc).limit(3) }
end
