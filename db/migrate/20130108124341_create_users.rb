class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :is_suggessted
      t.string :facebook_id
      t.string :bio
      t.string :country
      t.float :let
      t.float :long
      t.string :gender
      t.date :dob
      t.string :website
      t.string :mobile
      t.string :twitter_id
      t.string :is_active
      t.string :registration_id
      t.date :last_login_time
      t.string :password
      t.string :profile_picture
      t.string :cover_photo

      t.timestamps
    end
  end
end
