
ACCOUNTS  = [["Cash", "Asset", 1000000], 
["Bank", "Asset", 1000000],
["Buildings", "Asset", 0],
["Accounts Receivable", "Asset", 0],
["Accounts Payable", "Liability", 0],
["Debit", "Liability", 100000],
["Management Expenses", "Expense", 50000],
["Operations Expenses", "Expense", 50000],
["Capital", "Equity", 2000000]]

ACCOUNTS.each do |account|
   Account.create(name: account[0], accounttype: account[1], amount: account[2])
end

