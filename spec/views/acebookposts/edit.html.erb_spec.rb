require 'rails_helper'

RSpec.describe "acebookposts/edit", type: :view do
  before(:each) do
    @acebookpost = assign(:acebookpost, Acebookpost.create!(
      :content => "MyText"
    ))
  end

  it "renders the edit acebookpost form" do
    render

    assert_select "form[action=?][method=?]", acebookpost_path(@acebookpost), "post" do

      assert_select "textarea[name=?]", "acebookpost[content]"
    end
  end
end
