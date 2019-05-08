# frozen_string_literal: true

class Phrase < ApplicationRecord
  validates :sentence, presence: true
  #validates :name, presence: true
end
