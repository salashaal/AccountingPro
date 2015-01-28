class Transaction < ActiveRecord::Base
  attr_accessible :first_account_id, :second_account_id, :amount
end
