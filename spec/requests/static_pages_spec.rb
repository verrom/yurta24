require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Юрты Сибири'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Юрты Сибири')
    end

    it "should have the right title" do
    	visit '/static_pages/home'
    	expect(page).to have_title('Юрты Сибири')
	end	
  end
end