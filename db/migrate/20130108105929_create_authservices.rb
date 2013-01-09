class CreateAuthservices < ActiveRecord::Migration
  def change
    create_table :authservices do |t|
      t.string :uname
      t.string :uemail
      t.integer :uid
      t.string :fb_token
      t.string :provider

      t.timestamps
    end
  end
end
