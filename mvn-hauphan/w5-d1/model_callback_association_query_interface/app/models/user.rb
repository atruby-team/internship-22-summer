class User < ApplicationRecord
  has_many :posts
  has_many :comments, through: :posts
  has_many :teams_users
  has_many :teams, through: :teams_users
  has_many :leaders, -> { distinct }, through: :teams, source: :leader
  has_many :team_has_leaders, -> { where "leader_id not null" }, through: :teams_users, source: :team

  scope :with_gender, -> (gender){ where("gender = #{gender}") }
  scope :posts_count, -> { select("users.*", "count(posts.id) AS count").left_joins(:posts).group("users.id") }

  validates :email,presence: true,uniqueness: true, format: {with: /\A[a-zA-Z0-9]{3,10}@[a-zA-Z0-9]{3,10}.[a-zA-Z0-9]{2,5}\z/} 
  validates :phone_number,presence: true, format: {with: /\A[0-9]{9,10}\z/} 
  validates :gender,presence: true, inclusion: { in: [1, 2, 3] }
end
