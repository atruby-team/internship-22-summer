class Supplier < ApplicationRecord
  has_many :books
  has_many :reviews, through: :books, source: :reviews
end
