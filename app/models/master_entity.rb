class MasterEntity < ActiveRecord::Base
  attr_accessible :address, :entity_image, :entity_name, :information, :is_active, :lat, :long, :master_category_id, :sub_category
end
