class UserAppProperty < ActiveRecord::Base

  belongs_to :user
  belongs_to :app
  belongs_to :property_key_type

  self.table_name = :users_apps_properties
  self.primary_keys = :user_id, :app_id, :property_key_type_id

end
