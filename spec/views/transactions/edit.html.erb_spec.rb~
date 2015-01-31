require 'rails_helper'

RSpec.describe "transactions/edit", :type => :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :from => 1,
      :to => 1
    ))
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(@transaction), "post" do

      assert_select "input#transaction_from[name=?]", "transaction[from]"

      assert_select "input#transaction_to[name=?]", "transaction[to]"
    end
  end
end
