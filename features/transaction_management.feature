Feature: validate SUM(Assets) – SUM(Liabilities) = SUM(Equtiy) – Sum(Expenses)
 
  As a company owner
  So that I can quickly make transactions between accounts
  I want to ensure that all transactions adhere to the validation rule above

Background: accounts have been added to database

  Given the following accounts exist:	
  | name                 | accounttype | amount       |
  | Cash                 | Asset       | 0            |
  | Bank                 | Asset       | 0            |
  | Accounts Receivable  | Asset       | 0            |
  | Accounts Payable     | Liability   | 0            |
  | Debt                 | Liability   | 0            |
  | Office Expenses      | Expense     | 0            |
  | Capital              | Equity      | 0            |
  | Revenue              | Equity      | 0            |
  And I am on the AccPro home page

Scenario: create a valid transaction 
  When I follow "New Transaction"
  Then I should be on the new transaction page
  When I select "Bank" from "transaction_first_account_id"
  When I select "Capital" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "500"
  When I press "Create Transaction"
  Then I should be on the transactions page

Scenario: try an invalid transaction from Bank to Capital
  When I follow "New Transaction"
  Then I should be on the new transaction page
  When I select "To" from "transaction_first_direction"
  When I select "Bank" from "transaction_first_account_id"
  When I select "To" from "transaction_second_direction"
  When I select "Capital" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "500"
  When I press "Create Transaction"
  Then I should be on the transactions page

  When I follow "New Transaction"
  Then I should be on the new transaction page
  When I select "From" from "transaction_first_direction"
  When I select "Bank" from "transaction_first_account_id"
  When I select "To" from "transaction_second_direction"
  When I select "Capital" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "100"
  When I press "Create Transaction"
  Then I should be on the new transaction page
  Then I should see "Transaction is invalid, please use proper accounts."

Scenario: make a mix of valid and invalid transactions
  When I follow "New Transaction"
  Then I should be on the new transaction page
  When I select "To" from "transaction_first_direction"
  When I select "Bank" from "transaction_first_account_id"
  When I select "To" from "transaction_second_direction"
  When I select "Capital" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "500"
  When I press "Create Transaction"
  Then I should be on the transactions page

  When I follow "New Transaction"
  When I select "To" from "transaction_first_direction"
  When I select "Debt" from "transaction_first_account_id"
  When I select "To" from "transaction_second_direction"
  When I select "Project Expenses" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "500"
  When I press "Create Transaction"
  Then I should be on the transactions page

  When I follow "New Transaction"
  When I select "From" from "transaction_first_direction"
  When I select "Bank" from "transaction_first_account_id"
  When I select "To" from "transaction_second_direction"
  When I select "Cash" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "50"
  When I press "Create Transaction"
  Then I should be on the transactions page

  When I follow "New Transaction"
  When I select "From" from "transaction_first_direction"
  When I select "Bank" from "transaction_first_account_id"
  When I select "To" from "transaction_second_direction"
  When I select "Cash" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "2000"
  When I press "Create Transaction"
  Then I should be on the new transaction page
  Then I should see "No enough money in your account."

  When I select "From" from "transaction_first_direction"
  When I select "Bank" from "transaction_first_account_id"
  When I select "To" from "transaction_second_direction"
  When I select "Cash" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "100"
  When I press "Create Transaction"
  Then I should be on the transactions page

  When I follow "New Transaction"
  When I select "From" from "transaction_first_direction"
  When I select "Bank" from "transaction_first_account_id"
  When I select "To" from "transaction_second_direction"
  When I select "Debt" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "100"
  When I press "Create Transaction"
  Then I should be on the new transaction page
  Then I should see "Transaction is invalid, please use proper accounts."




