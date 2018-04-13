class Answer < ApplicationRecord
  belongs_to :question
  def to_s
     self.content
  end
end
