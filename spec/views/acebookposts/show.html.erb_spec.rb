require 'rails_helper'

RSpec.describe "acebookposts/show", type: :view do
  before(:each) do
    @acebookpost = assign(:acebookpost, Acebookpost.create!(
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
