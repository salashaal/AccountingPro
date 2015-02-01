
ACCOUNTS  = [["Cash", "Asset", 0], 
["Bank", "Asset", 2000000],
["Buildings", "Asset", 0],
["Accounts Receivable", "Asset", 0],
["Accounts Payable", "Liability", 0],
["Debit", "Liability", 0],
["Management Expenses", "Expense", 0],
["Operations Expenses", "Expense", 0],
["Capital", "Asset", 3000000]]

ACCOUNTS.each do |account|
   Account.create(name: account[0], accounttype: account[1], amount: account[2])
end

