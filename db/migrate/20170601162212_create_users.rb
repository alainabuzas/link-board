class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :provider_id
      t.string :provider_hash
      t.string :email
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
