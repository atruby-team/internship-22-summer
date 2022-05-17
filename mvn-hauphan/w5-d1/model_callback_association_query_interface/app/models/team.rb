class Team < ApplicationRecord
  belongs_to :user
  has_many :teams_users
  has_many :users, through: :teams_users

  validates :name, presence: true
end
