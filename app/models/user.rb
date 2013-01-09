class User < ActiveRecord::Base
  attr_accessible :bio, :country, :cover_photo, :dob, :email, :facebook_id, :first_name, :gender, :is_active, :is_suggessted, :last_login_time, :last_name, :let, :long, :mobile, :password, :profile_picture, :registration_id, :twitter_id, :website
end
