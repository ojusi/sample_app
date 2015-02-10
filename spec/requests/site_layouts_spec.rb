require 'rails_helper'

RSpec.describe "SiteLayouts", :type => :request do
#  describe "GET /site_layouts" do
#    it "works! (now write some real specs)" do
#      get site_layouts_path
#      expect(response).to have_http_status(200)
#    end
#  end

  describe "Static Pages" do
    it "should have the right links" do
      visit root_path
      click_link "About"
      expect(page).to have_title(full_title('About Us'))   
      click_link "Help"
      expect(page).to have_title(full_title('Help'))
      click_link "Contact"
      expect(page).to have_title(full_title('Contact'))
      click_link "Home"
      expect(page).to have_title(full_title('Home'))
    end
  end
end
