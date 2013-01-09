class CreateMasterCategories < ActiveRecord::Migration
  def change
    create_table :master_categories do |t|
      t.string :category_name
      t.string :category_image
      t.boolean :is_active

      t.timestamps
    end
  end
end
