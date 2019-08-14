class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :full_name
      t.string :password_digest
      t.string :token
      t.string :description
    end
    add_index :users, :token, unique:  true
    #Ex:- add_index("admin_users", "username")
  end
end
