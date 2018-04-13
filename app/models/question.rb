class Question < ApplicationRecord
  belongs_to :department, optional: true
  has_many :answers
  attr_accessor :is_correct
  accepts_nested_attributes_for :answers
  def to_s
     self.content
  end
end
