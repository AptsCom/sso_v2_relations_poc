class PropertyKeyType < ActiveRecord::Base
  has_one :user_app_property
  has_one :user, :through => :user_app_property
  has_one :app, :through => :user_app_property
end
