class Question < ApplicationRecord
  belongs_to :department, optional: true
  has_many :answers
end
