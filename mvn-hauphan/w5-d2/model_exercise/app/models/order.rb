class Order < ApplicationRecord
  belongs_to :customer, counter_cache: true
  has_many :book_orders
  has_many :books, through: :book_orders

  enum status: [ :pending, :shipping, :done, :cancel ]

  validate :subtotal_cannot_be_greater_than_total

  private
  def subtotal_cannot_be_greater_than_total
    if subtotal > total
      errors.add(:subtotal, I18n.t('error_message'))
    end
  end
end
