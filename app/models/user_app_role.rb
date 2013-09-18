class UserAppRole < ActiveRecord::Base

  belongs_to :user
  belongs_to :role
  belongs_to :app

  self.table_name = :users_apps_roles
  self.primary_keys = :user_id, :role_id, :app_id

end
