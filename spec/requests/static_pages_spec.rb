require 'spec_helper'

describe "Static pages" do
  before(:all) do
    @titleBase = "Ruby on Rails Tutorial Sample App | "
  end

  describe "Home page" do
    before(:each) do
      visit '/static_pages/home'
    end

    it "should have the h1 'Sample App'" do
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      page.should have_selector('title',
        :text => "#{@titleBase}Home")
    end
  end
 
  describe "Help page" do
    before(:each) do
      visit '/static_pages/help'
    end

    it "should have the h1 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      page.should have_selector('title',
        :text => "#{@titleBase}Help")
    end
  end

  describe "About page" do 
    before(:each) do
      visit '/static_pages/about'
    end

    it "should have the h1 'About Us'" do
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      page.should have_selector('title',
        :text => "#{@titleBase}About Us")
    end
  end

  describe "Contact page" do 
    before(:each) do
      visit '/static_pages/contact'
    end

    it "should have the h1 'About Us'" do
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the right title" do
      page.should have_selector('title',
        :text => "#{@titleBase}Contact")
    end
  end
end
