# frozen_string_literal: true

class Term < ApplicationRecord
  has_and_belongs_to_many :phrases
end
