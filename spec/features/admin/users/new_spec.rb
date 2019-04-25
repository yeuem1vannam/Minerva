
# frozen_string_literal: true

include Warden::Test::Helpers
Warden.test_mode!

feature "admin > users > new", :devise do

  after(:each) do
    Warden.test_reset!
  end

  let(:admin) { create :user, :admin }
  before do
    login_as admin, scope: :user
    visit new_admin_user_path
  end

  scenario "user visit admin/user/new page" do
    expect(page).to have_button("Create User")
    # fill in
    # count user
    # submit
    # count user
    # expect count1 != count2
    # expect redirect to user show
  end

  context "when normal user" do
    before do
      logout(:user)
      user = create :user
      login_as user, scope: :user
      visit new_admin_user_path(admin)
    end
  end

  scenario "user visit admin/user/new page" do
    visit new_admin_user_path
    expect(page).to have_current_path new_admin_user_path
    #expect(page).to have_content /Access denied/i
  end

  scenario "fill " do
    #binding.pry
    fill_in "Name", :with => "elliots"
   # expect(page).to have_css("field-unit__label")
    #select "user" , form: "select"
    fill_in "user_password", :with => "Aa@123455"
    fill_in "user_password_confirmation", :with => "Aa@123456"
    fill_in "user_unconfirmed_email", :with => "tangvinhduong99@gmail.com"
    #binding.pry
    expect(page).to have_button("Create User")
    #expect(page).to have_text("user was successfully created.")
  end

  scenario "fill fail" do
    fill_in "user_email", :with => "tangvinhduong99@gmail.com"
    fill_in "user_name", :with => "Duong"
   # expect(page).to have_css("field-unit__label")
    #select "user" , form: "select"
    fill_in "user_password", :with => "Aa@123455"
    fill_in "user_password_confirmation", :with => "abc12312"
    fill_in "user_unconfirmed_email", :with => "tangvinhduong99@gmail.com"
    expect(page).to have_button("Create User")
    #expect(page).to have_text("Email has already been taken")
    #expect(page).to have_text("Password confirmation doesn't match Password")
  end
end
