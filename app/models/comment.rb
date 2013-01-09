class Comment < ActiveRecord::Base
  attr_accessible :all_tags, :all_username_tags, :comment_text, :is_active, :is_new_comment, :is_public, :post_id, :user_id
end
