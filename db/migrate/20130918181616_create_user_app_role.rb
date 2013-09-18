class CreateUserAppRole < ActiveRecord::Migration
  def change
    create_table :users_apps_roles, :id => false do |t|
      t.references :user
      t.references :app
      t.references :role
      t.timestamps
    end
  end
end
