# frozen_string_literal: true

# fronzen_string_literal: true
include Warden::Test::Helpers
Warden.test_mode!

feature "admin > terms > edit", :devise do

  after(:each) do
    Warden.test_reset!
  end

  let(:admin) { create :user, :admin }
  let(:term) { create :term }

  before do
   login_as admin, scope: :user
   visit edit_admin_term_path(term)
  end

  scenario "user visit admin/term/edit page" do
    expect(page).to have_button("Update Term")
    expect(page).to have_link href: admin_term_path(term)
  end
end
