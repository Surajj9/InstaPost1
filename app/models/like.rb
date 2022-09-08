class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  scope :popular,-> { select('post_id,count(post_id)as count').group(:post_id).order('count desc').limit(10)}

  scope :popular1,-> { select('post_id,count(post_id)as count').group(:post_id).order('count asc').limit(10)}
end
