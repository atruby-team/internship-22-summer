class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true

  after_create :update_comments_count
  private
    def update_comments_count
      User.find(self.user_id).update(comments_count: User.find(self.user_id).comments_count += 1)
      Post.find(self.post_id).update(comments_count: Post.find(self.post_id).comments_count += 1)
    end
end
