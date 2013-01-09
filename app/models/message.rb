class Message < ActiveRecord::Base
  attr_accessible :parent_thread_id, :send_date, :sender_id, :text
end
