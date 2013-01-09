class CreateMessageDetails < ActiveRecord::Migration
  def change
    create_table :message_details do |t|
      t.integer :message_id
      t.integer :receiver_id
      t.string :receiver_text
      t.boolean :read_status
      t.boolean :delete_status

      t.timestamps
    end
  end
end
