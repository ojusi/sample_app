require 'rails_helper'

def full_title(page_title)
  base_title = "Ingredient Guru's 'What's in it?' Blog"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end



RSpec.describe "StaticPages", :type => :request do

  subject { page }
  
  shared_examples_for "all static pages" do 
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "GET /static_pages/home" do
    before { visit root_path }
    let(:heading)  { "What's in it" }
    let(:page_title) { 'Home' }

    it_should_behave_like "all static pages"
    it { should have_content("What's in it") }
  end


  describe "GET /static_pages/help" do
    before { visit help_path }
    let(:heading)  { "Help" }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
    it { should have_content("Help") }
  end


  describe "GET /static_pages/about" do
    before { visit about_path }
    let(:heading)  { 'About Us' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
    it { should have_content('About Us') }
  end

  describe "GET /static_pages/contact" do
    before { visit contact_path }
    let(:heading)  { "Contact" }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"
    it { should have_content("Contact") }
  end

end
