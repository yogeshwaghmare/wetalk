class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_is
      t.integer :user_entity_id
      t.float :lat
      t.float :long
      t.boolean :is_public
      t.string :post_comment
      t.string :post_image
      t.boolean :is_active

      t.timestamps
    end
  end
end
