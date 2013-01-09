class CreateUserCategories < ActiveRecord::Migration
  def change
    create_table :user_categories do |t|
      t.integer :user_id
      t.integer :masterCategory_id
      t.boolean :is_active

      t.timestamps
    end
  end
end
