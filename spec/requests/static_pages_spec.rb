require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }

    it { page.should have_selector('title', text: full_title('')) }
    it { page.should_not have have_selector(" | Home") }
  end
 
  describe "Help page" do
    before { visit help_path }

    it { page.should have_selector('h1', text: 'Help') }
    it { page.should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do 
    before { visit about_path }

    it { page.should have_selector('h1', text: 'About Us') }
    it { page.should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do 
    before { visit contact_path }

    it { page.should have_selector('h1', text: 'Contact') }
    it { page.should have_selector('title', text: full_title('Contact')) }
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
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
    click_link "sample app"
    page.should have_selector 'h1', text: 'Sample App'
  end
end
