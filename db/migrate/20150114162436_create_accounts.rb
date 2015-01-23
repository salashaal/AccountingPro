class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :accounttype
      t.integer :amount

      t.timestamps
    end
  end
end
