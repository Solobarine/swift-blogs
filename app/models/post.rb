class Post < ApplicationRecord
  belongs_to :author_id, class_name: 'User'
  has_many :likes
  has_many :comments

  def update_user_posts
    author_id.increment!(:posts_counter)
  end

  def five_most_recent_post
    comments.order(created_at: :desc).limit(5)
  end
end
