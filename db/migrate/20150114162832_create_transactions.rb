class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
