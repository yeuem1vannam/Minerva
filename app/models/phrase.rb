# frozen_string_literal: true

class Phrase < ApplicationRecord
  validates :phrase, presence: true,
end