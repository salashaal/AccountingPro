class RemoveDetailsFromTransactions < ActiveRecord::Migration
  def up
    remove_column :transactions, :to
    remove_column :transactions, :from
  end

  def down
    add_column :transactions, :from, :string
    add_column :transactions, :to, :string
  end
end
