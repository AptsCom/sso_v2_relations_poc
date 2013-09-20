class ChangePropertyKeyTypeForUserAppProperty < ActiveRecord::Migration
  def up
  	remove_column :users_apps_properties,:property_key_type_id, :integer
  	add_reference :users_apps_properties,:property_key_type, index: true
  end

  def down
    remove_reference :users_apps_properties,:property_key_type
    add_column :users_apps_properties,:property_key_type_id, :integer
  end
end
