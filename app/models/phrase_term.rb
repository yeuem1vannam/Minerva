class PhraseTerm < ApplicationRecord
  belongs_to :phrase
  belongs_to :term
end
