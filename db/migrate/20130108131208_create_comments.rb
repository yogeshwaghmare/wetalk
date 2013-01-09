class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :comment_text
      t.integer :user_id
      t.boolean :is_public
      t.string :all_tags
      t.string :all_username_tags
      t.boolean :is_new_comment
      t.boolean :is_active

      t.timestamps
    end
  end
end
