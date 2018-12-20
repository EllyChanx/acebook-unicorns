require 'rails_helper'

RSpec.describe "Acebookposts", type: :request do
  describe "GET /acebookposts" do
    it "works! (now write some real specs)" do
      get acebookposts_path
      expect(response).to have_http_status(200)
    end
  end
end
