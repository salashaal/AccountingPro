Feature: create new account from the home page
 
  As a company owner
  So that I can quickly create an account
  I want to see the confirmation maessage on the accounts list page

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

Scenario: create new account
  When I follow "New Account"
  Then I should be on the new account page
  When I fill in the following:
  | account_name         | Test        |
  | account_amount       | 0           |
  When I select "Asset" from "account_accounttype"
  When I press "Create Account"
  Then I should be on the AccPro home page
  Then I should see "Test"


