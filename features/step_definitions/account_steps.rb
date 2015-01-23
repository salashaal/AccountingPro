# Add a declarative step here for populating the DB with accounts.

Given /the following accounts exist/ do |accounts_table|
  accounts_table.hashes.each do |account|
    Account.create(account)
  end
end

Then /I should see account "(.*)" before "(.*)"/ do |e1, e2|
  accounts_list = page.all("table#keywords tr td[1]").map {|t| t.text}
  assert accounts_list.index(e1) < accounts_list.index(e2)
end

Then /I should see all the accounts/ do
  rows = page.all("table#keywords tr td[1]")
  assert rows.count == Account.all.count
end
