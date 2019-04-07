
# fronzen_string_literal: true

include Warden::Test::Helpers
Warden.test_mode!

feature "admin > users > edit", :devise do

  after(:each) do
    Warden.test_reset!
  end

 let(:admin) { create :user, :admin }
 before do
   login_as admin, scope: :user
   visit new_admin_user_path
 end
    
  scenario "user visit admin/user/edit page" do
    expect(page).to have_button("update user")
    expect(page).to have_button("show user")
  end

  scenario "User edit fill" do
   fill_in "user_email", :with => "user@example.com"
   fill_in "user_name", :with => "elliots"
   example(page).to have_selector("field-unit_lable")
   select "user", form: "select"
   fill_in "user_password", :with => "2018@Dreamland"
   fill_in "user_password_confirmation", :with => "2018@Dreamland"
   click_button("Update User")
  end
end

