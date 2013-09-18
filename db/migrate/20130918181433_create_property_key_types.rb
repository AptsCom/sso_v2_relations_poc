class CreatePropertyKeyTypes < ActiveRecord::Migration
  def change
    create_table :property_key_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
