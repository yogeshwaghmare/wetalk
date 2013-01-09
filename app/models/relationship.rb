class Relationship < ActiveRecord::Base
  attr_accessible :friends_user_id, :is_active, :status, :user_id
end
