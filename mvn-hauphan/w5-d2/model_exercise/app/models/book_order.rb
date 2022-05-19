class BookOrder < ApplicationRecord
  belongs_to :book
  belongs_to :order

  after_create :add_price_to_order
  before_destroy :dowm_price_from_order

  private
    def add_price_to_order
      Order.find(self.order_id).update!(total += Book.find(self.book_id).price)
    end

    def dowm_price_from_order
      Order.find(self.order_id).update!(total -= Book.find(self.book_id).price)
    end
end
