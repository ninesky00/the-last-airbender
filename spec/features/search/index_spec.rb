require 'rails_helper'

RSpec.describe "search" do 
  describe "root page" do 
    it "has a selector for nation" do 
      visit root_path

      expect(page).to have_select('nation')
    end

    it "can select fire nation and redirect to search index" do 
      visit root_path 

      select('Fire Nation', from: 'nation')
      click_button 'Search For Members'
      expect(current_path).to eq(search_path)
    end
  end

  it "display an index of characters from the fire nation" do
    visit root_path 

    select('Fire Nation', from: 'nation')
    click_button 'Search For Members'
    expect(current_path).to eq(search_path)
    
    expect(page).to have_content('name: Afiko')
    expect(page).to have_content('name: Azula')
    expect(page).to have_content('name: Fire Nation bar patron')
  end
end