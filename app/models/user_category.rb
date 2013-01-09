class UserCategory < ActiveRecord::Base
  attr_accessible :is_active, :masterCategory_id, :user_id
end
