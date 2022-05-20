class Team < ApplicationRecord
  has_many :teams_users
  has_many :users, through: :teams_users
  belongs_to :leader, class_name: 'User', foreign_key: 'leader_id'
  
  validates :name, presence: true
end
