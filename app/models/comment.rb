class Comment < ApplicationRecord
  belongs_to :author_id, class_name: 'User'
  belongs_to :post_id

  def update_post_comments
    post_id.increment!(:comments_counter)
  end
end
