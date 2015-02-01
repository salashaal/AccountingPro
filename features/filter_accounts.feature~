Feature: display list of accounts filtered by type
 
  As a company owner
  So that I can quickly browse accounts
  I want to see accounts matching only certain type

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

Scenario: restrict to accounts with Asset type
  When I select "Asset" from "account_type"
  And I press "Filter"
  Then I should see "Cash"
  Then I should see "Bank"
  Then I should see "Equipment"
  Then I should see "Accounts Receivable"
  Then I should not see "Accounts Payable"
  Then I should not see "Debt"
  Then I should not see "Office Expenses"
  Then I should not see "Project Expenses"
  Then I should not see "Capital"
  Then I should not see "Revenue"


