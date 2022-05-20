class BookOrder < ApplicationRecord
  belongs_to :book
  belongs_to :order

  after_create :add_price_to_order
  after_destroy :dowm_price_from_order

  private
    def add_price_to_order
      order.update!(total: order.total.to_i + book.price)
    end

    def dowm_price_from_order
      order.update!(total: order.total.to_i - book.price)
    end
end
