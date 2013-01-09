class Authservice < ActiveRecord::Base
  attr_accessible :fb_token, :provider, :uemail, :uid, :uname
end
