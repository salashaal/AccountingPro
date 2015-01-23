class AddAmountToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :amount, :integer
  end
end
