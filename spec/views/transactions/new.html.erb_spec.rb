require 'rails_helper'

RSpec.describe "transactions/new", :type => :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      :from => 1,
      :to => 1
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input#transaction_from[name=?]", "transaction[from]"

      assert_select "input#transaction_to[name=?]", "transaction[to]"
    end
  end
end
