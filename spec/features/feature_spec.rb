require 'date'

# feature "Ask for user details" do
#   scenario "User is prompted to enter name" do
#     visit('/')
#     expect(page).to have_content "To begin, please let me know your name:"
#   end
#
#   scenario "User is prompted to enter date of birth" do
#     visit('/')
#     expect(page).to have_content "And your date of birth"
#   end
# end

# feature "Celebrate the user's birthday" do
#   scenario "User is wished Happy Birthday on the correct date" do
#     visit('/')
#     fill_in :user_name, with: "Lucas"
#     fill_in :bday, with:
#     click_button("submit")
#     expect(page).to have_content "Happy Birthday, Lucas!"
#   end
# end

feature "Tell the user how long it is until their birthday" do
  scenario "The date today is not the same as user birthday" do
    visit('/')
    fill_in :user_name, with: "Lucas"
    fill_in :bday, with: "18-09-1989"
    click_button("submit")

    expect(page).to have_content "Sorry, Lucas. Still 2 days to wait!"
  end
end
