class Post < ActiveRecord::Base
  attr_accessible :is_active, :is_public, :lat, :long, :post_comment, :post_image, :user_entity_id, :user_is
end
