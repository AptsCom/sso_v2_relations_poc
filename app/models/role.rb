class Role < ActiveRecord::Base

  has_one :user_app_role
  has_one :user, :through => :user_app_role
  has_one :app, :through => :user_app_role

end
