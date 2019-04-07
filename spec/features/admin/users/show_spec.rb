
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
   visit new_admin_user_path
  end
 
  scenario "user visit admin/user/show page" do
    expect(page).to have_current_path root_path
    expect(page).to have_content /Access denied/i   
  end

  scenario "show" do
    click_button ("button")
    click_link('a[href="admin/users/mailto:user@example.com/"]')
  end
end