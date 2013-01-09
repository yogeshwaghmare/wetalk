class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :friends_user_id
      t.string :status
      t.boolean :is_active

      t.timestamps
    end
  end
end
