require 'rails_helper'

RSpec.describe "accounts/edit", :type => :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :name => "MyString",
      :type => "",
      :amount => 1
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_type[name=?]", "account[type]"

      assert_select "input#account_amount[name=?]", "account[amount]"
    end
  end
end
