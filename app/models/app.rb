class App < ActiveRecord::Base

  has_one :user_app_role
  has_one :user_app_property
  has_one :user, :through => :user_app_role
  has_one :role, :through => :user_app_role
  has_one :property_key_type, :through => :user_app_property

end
