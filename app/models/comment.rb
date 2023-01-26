# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :author_id
  belongs_to :post_id
end
