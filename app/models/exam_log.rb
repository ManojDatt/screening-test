class ExamLog < ApplicationRecord
	belongs_to :employees, optional: true
	belongs_to :department, optional: true
	has_many :questions, through: :department
	enum result: ["PENDING", "FAILED", "PASS"]
    
    after_initialize do |variable|
    	variable.result = "PENDING"
    end
    scope :pending_exam, ->{where(result: "PENDING")}
    accepts_nested_attributes_for :questions
end
