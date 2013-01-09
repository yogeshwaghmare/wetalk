class UserCategoryRelestionship < ActiveRecord::Base
  attr_accessible :friend_user_id, :is_active, :user_category_id, :user_id
end
