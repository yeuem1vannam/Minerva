# frozen_string_literal: true

class PhraseTerm < ApplicationRecord
  belongs_to :phrase
  belongs_to :term
end
