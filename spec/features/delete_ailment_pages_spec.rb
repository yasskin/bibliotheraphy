require 'rails_helper'

describe "the delete a topic process" do
  it "deletes an existing topic" do
    topic = FactoryGirl.create(:topic)
    visit topics_path
    click_link 'Love'
    click_link 'Add an Ailment'
    fill_in 'Description', :with => 'Covet thy Neighbors Wife'
    click_on "Create Ailment"
    click_link 'Delete'
    expect(page).to have_no_content 'Covet thy Neighbors Wife'
  end
end
