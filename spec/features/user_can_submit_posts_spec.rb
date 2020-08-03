require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    signup
    login
    click_link "New post"
    fill_in "post[message]", with: "Hello, world!"
    click_button "Create Post"
    expect(page).to have_content("Hello, world!")
  end
end
