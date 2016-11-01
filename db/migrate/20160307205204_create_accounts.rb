class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :balance, default: 0, null: false
      t.belongs_to :user
      t.belongs_to :bank

      t.timestamps null: false
    end
  end
end
