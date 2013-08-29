require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    before visit '/static_pages/home'
    it "should have content 'Haggle Frock!'" do
      expect(page).to have_content('Haggle Frock')
    end
    it "title should contain page name" do
      expect(page). have_title('Home')
    end
  end

  describe "Contact Page" do
    it "should have content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Get in touch')
    end
  end

end
