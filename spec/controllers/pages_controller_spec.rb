require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Wikidiscography | Home")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "Wikidiscography | About")
    end
  end

  describe "GET 'contributing'" do
    it "should be successful" do
      get 'contributing'
      response.should be_success
    end
    it "should have the right title" do
      get 'contributing'
      response.should have_selector("title", :content => "Wikidiscography | Contributing")
    end
  end
end
