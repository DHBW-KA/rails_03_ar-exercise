class CreateBookEntries < ActiveRecord::Migration
  def change
    create_table :book_entries do |t|
      t.string :description
      t.integer :amount
      t.belongs_to :account_from
      t.belongs_to :account_to
      t.belongs_to :issuer

      t.timestamps null: false
    end
  end
end
