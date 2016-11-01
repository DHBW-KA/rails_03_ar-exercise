class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :street
      t.string :city

      t.timestamps null: false
    end
  end
end
