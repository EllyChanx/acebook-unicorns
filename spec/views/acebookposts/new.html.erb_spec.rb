require 'rails_helper'

RSpec.describe "acebookposts/new", type: :view do
  before(:each) do
    assign(:acebookpost, Acebookpost.new(
      :content => "MyText"
    ))
  end

  it "renders new acebookpost form" do
    render

    assert_select "form[action=?][method=?]", acebookposts_path, "post" do

      assert_select "textarea[name=?]", "acebookpost[content]"
    end
  end
end
