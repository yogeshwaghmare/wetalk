class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :rating_count

      t.timestamps
    end
  end
end
