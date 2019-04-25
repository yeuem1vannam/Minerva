
# fronzen_string_literal: true

include Warden::Test::Helpers
Warden.test_mode!

feature "admin > users > show", :devise do

  after(:each) do
    Warden.test_reset!
  end

 let(:admin) { create :user, :admin }
 before do
   login_as admin, scope: :user
   visit show_user_path
  end

  scenario "user visit admin/user/show page" do
    visit show_admin_user_path
    expect(page).to have_current_path show_user_path
    #expect(page).to have_content /Access denied/i 
  end

  scenario "show" do
   # expect(page).to have_button("Show User")
    expect(page).to have_link href: edit_admin_user_path
  end
end