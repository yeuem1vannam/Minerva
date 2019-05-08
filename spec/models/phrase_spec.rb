# frozen_string_literal: true

require "rails_helper"

RSpec.describe Phrase, type: :model do
  it { should have_db_column(:sentence).with_options null: false }
end
