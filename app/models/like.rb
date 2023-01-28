class Like < ApplicationRecord
  belongs_to :author_id, class_name: 'User'
  belongs_to :post_id

  def update_post_likes
    post_id.increment!(:likes_counter)
  end
end
