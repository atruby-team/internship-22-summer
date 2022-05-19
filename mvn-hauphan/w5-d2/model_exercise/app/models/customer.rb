class Customer < ApplicationRecord
  has_many :orders
  has_many :reviews
  has_many :books, -> { where('year_published < 2000').distinct }, through: :orders, source: :books
  has_many :book_orders, through: :orders, source: :book_orders

  scope :customer_has_never_bought_a_book, -> { select('customers.*', 'count(order_id) AS count').left_joins(:orders, :book_orders)
                                                  .having('count = 0').group('customers.id') }
  validates :first_name, length: { in: 8..100 }
  validates :last_name, length: { in: 8..100 }
  validates :email, format: {with: /\A[a-zA-Z0-9]{3,10}@[a-zA-Z0-9]{3,10}.[a-zA-Z0-9]{2,5}\z/ }
end
