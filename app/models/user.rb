class User < ActiveRecord::Base

  has_many :user_app_roles
  has_many :apps, :through => :user_app_roles
  has_many :roles, :through => :user_app_roles

end
