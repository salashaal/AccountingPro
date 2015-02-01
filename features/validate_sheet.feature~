Feature: view the transaction log
 
  As a company owner
  So that I can quickly view the transaction history
  I want to see all transactions between accounts ordered by date

Background: accounts have been added to database

  Given the following accounts exist:	
  | name                 | accounttype | amount       |
  | Cash                 | Asset       | 0            |
  | Bank                 | Asset       | 0            |
  | Equipment            | Asset       | 0            |
  | Accounts Receivable  | Asset       | 0            |
  | Accounts Payable     | Liability   | 0            |
  | Debt                 | Liability   | 0            |
  | Office Expenses      | Expense     | 0            |
  | Project Expenses     | Expense     | 0            |
  | Capital              | Equity      | 0            |
  | Revenue              | Equity      | 0            |

  And I am on the AccPro home page

Scenario: create and view the created transaction to Capital and Bank
  When I follow "New Transaction"
  Then I should be on the new transaction page
  When I select "To" from "transaction_first_direction"
  When I select "Bank" from "transaction_first_account_id"
  When I select "To" from "transaction_second_direction"
  When I select "Capital" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "500"
  When I press "Create Transaction"
  Then I should be on the transactions page
  Then I should see "Bank"
  Then I should see "Capital"
  Then I should see "500"

Scenario: create and view the created transaction from Bank to Project Expenses
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
  When I select "Project Expenses" from "transaction_second_account_id"
  When I fill in "transaction_amount" with "100"
  When I press "Create Transaction"
  Then I should be on the transactions page
  Then I should see all the transactions
  Then I should see transaction "Capital" before "Project Expenses"
  Then I should see amount "500" before "100"
  Then I should not see "Debt"
  Then I should not see "Revenue"
  Then I should not see "Accounts Receivable"
  Then I should not see "Equipment"


