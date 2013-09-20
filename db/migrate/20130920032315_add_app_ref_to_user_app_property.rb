class AddAppRefToUserAppProperty < ActiveRecord::Migration
  def change
  	add_reference :users_apps_properties, :app, index: true
  end
end
