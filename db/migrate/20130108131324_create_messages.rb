class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :parent_thread_id
      t.text :text
      t.date :send_date
      t.integer :sender_id

      t.timestamps
    end
  end
end
