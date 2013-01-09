class CreateUserCategoryRelestionships < ActiveRecord::Migration
  def change
    create_table :user_category_relestionships do |t|
      t.integer :user_id
      t.integer :friend_user_id
      t.integer :user_category_id
      t.boolean :is_active

      t.timestamps
    end
  end
end
