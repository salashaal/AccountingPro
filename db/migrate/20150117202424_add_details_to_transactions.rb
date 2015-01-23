class AddDetailsToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :first_account_id, :integer
    add_column :transactions, :first_direction, :string
    add_column :transactions, :second_account_id, :integer
    add_column :transactions, :second_direction, :string
  end
end
