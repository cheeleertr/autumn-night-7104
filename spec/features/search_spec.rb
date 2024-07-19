require 'rails_helper'

RSpec.describe 'Search', type: :feature do
  it "returns members from search by nation" do
    @members = MemberFacade.new.get_members_by_nation("fire+nation")

    visit "/"
    
    select "Fire Nation", :from => :nation
    click_button('Search For Members')

    expect(current_path).to eq("/search")

    expect(page).to have_content("Population: #{@members.count}")
# save_and_open_page
    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".image")
      expect(page).to have_css(".allies")
      expect(page).to have_css(".affiliation")
      expect(page).to have_css(".enemies")
    end
  end
end