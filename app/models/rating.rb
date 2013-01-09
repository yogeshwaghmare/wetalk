class Rating < ActiveRecord::Base
  attr_accessible :post_id, :rating_count, :user_id
end
