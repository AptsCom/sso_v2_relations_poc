class UserAppProperty < ActiveRecord::Base

  belongs_to :user
  belongs_to :app

  self.table_name = :users_apps_properties
  self.primary_keys = :user_id, :role_id

end
