class MessageDetail < ActiveRecord::Base
  attr_accessible :delete_status, :message_id, :read_status, :receiver_id, :receiver_text
end
