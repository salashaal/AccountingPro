class RemoveFirstDirectionAndSecondDirectionFromTransactions < ActiveRecord::Migration
  def up
    remove_column :transactions, :first_direction
    remove_column :transactions, :second_direction
  end

  def down
    add_column :transactions, :second_direction, :String
    add_column :transactions, :first_direction, :String
  end
end
