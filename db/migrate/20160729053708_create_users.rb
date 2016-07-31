class CreateUsers < ActiveRecord::Migration[5.0]
  def change
  	drop_table :users
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :email
      t.string :favoritefood
      t.timestamps
    end
  end
end
