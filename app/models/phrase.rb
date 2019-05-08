# frozen_string_literal: true

class Phrase < ApplicationRecord
  validates :sentence, presence: true
end
