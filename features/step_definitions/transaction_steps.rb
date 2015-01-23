# Add a declarative step here for populating the DB with transactions.

Then /I should see transaction "(.*)" before "(.*)"/ do |e1, e2|
  transactions_list = page.all("table#keywords tr td[4]").map {|t| t.text}
  assert transactions_list.index(e1) < transactions_list.index(e2)
end

Then /I should see amount "(.*)" before "(.*)"/ do |e1, e2|
  transactions_list = page.all("table#keywords tr td[5]").map {|t| t.text}
  assert transactions_list.index(e1) < transactions_list.index(e2)
end

Then /I should see all the transactions/ do
  rows = page.all("table#keywords tr td[1]")
  assert rows.count == Transaction.all.count
end
