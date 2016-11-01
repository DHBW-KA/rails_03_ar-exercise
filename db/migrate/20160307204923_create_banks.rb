class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.string :city
      t.string :bic

      t.timestamps null: false
    end
  end
end
