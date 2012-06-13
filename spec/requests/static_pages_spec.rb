require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before { visit root_path }

    it "should have the h1 'Sample App'" do
      page.should have_selector('h1', text: 'Sample App')
    end

    it "should have the base title" do
      page.should have_selector('title', text: full_title(''))
    end

    it "should not have a custom title" do
      page.should_not have have_selector(" | Home")
    end
  end
 
  describe "Help page" do
    before { visit help_path }

    it "should have the h1 'Help'" do
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the right title" do
      page.should have_selector('title',
        text: full_title('Help'))
    end
  end

  describe "About page" do 
    before { visit about_path }

    it "should have the h1 'About Us'" do
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the right title" do
      page.should have_selector('title',
        text: full_title('About Us'))
    end
  end

  describe "Contact page" do 
    before { visit contact_path }

    it "should have the h1 'About Us'" do
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the right title" do
      page.should have_selector('title',
        text: full_title('Contact'))
    end
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    page.should have_selector 'title', text: full_title('')
    # click_link "Sign up now!"
    # page.should have_selector 'title', text: full_title('Sign up')
    click_link "sample app"
    page.should have_selector 'h1', text: 'Sample App'
  end
end
