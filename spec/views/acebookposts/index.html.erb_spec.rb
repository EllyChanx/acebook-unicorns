require 'rails_helper'

RSpec.describe "acebookposts/index", type: :view do
  before(:each) do
    assign(:acebookposts, [
      Acebookpost.create!(
        :content => "MyText"
      ),
      Acebookpost.create!(
        :content => "MyText"
      )
    ])
  end

  it "renders a list of acebookposts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
