class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :password_hash
      t.string    :username
      t.string    :email
      t.text      :about_me
      t.text      :img_link

      t.timestamps
    end
  end
end
