# frozen_string_literal: true

require "rails_helper"

RSpec.describe Term, type: :model do
  it { should have_db_column(:word).with_options null: false }
  it { should have_db_column(:meaning).with_options null: true }
  it { should have_db_column(:reading).with_options null: true }
  it { should have_db_index :word }
end
