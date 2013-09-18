class CreateUserAppProperty < ActiveRecord::Migration
  def change
    create_table :users_apps_properties, :id => false do |t|
      t.references :user
      t.integer :property_key_type_id
      t.integer :property_key
      t.timestamps
    end
  end
end
