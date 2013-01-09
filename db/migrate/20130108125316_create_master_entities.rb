class CreateMasterEntities < ActiveRecord::Migration
  def change
    create_table :master_entities do |t|
      t.integer :master_category_id
      t.string :entity_name
      t.string :information
      t.string :address
      t.string :sub_category
      t.float :lat
      t.float :long
      t.string :entity_image
      t.boolean :is_active

      t.timestamps
    end
  end
end
