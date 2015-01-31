require 'rails_helper'

RSpec.describe "transactions/index", :type => :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        :from => 1,
        :to => 2
      ),
      Transaction.create!(
        :from => 1,
        :to => 2
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
