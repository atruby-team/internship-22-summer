class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :leaders, class_name: "Team", foreign_key: "leader_id"
  has_many :teams_users
  has_many :teams, through: :teams_users

  validates :email,presence: true,uniqueness: true, format: {with: /\A[a-zA-Z0-9]{3,10}@[a-zA-Z0-9]{3,10}.[a-zA-Z0-9]{2,5}\z/} 
  validates :phone_number,presence: true, format: {with: /\A[0-9]{9,10}\z/} 
  validates :gender,presence: true, inclusion: { in: [1, 2, 3] }
end
