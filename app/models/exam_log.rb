class ExamLog < ApplicationRecord
	belongs_to :employee, optional: true
	belongs_to :department, optional: true
	has_many :questions, through: :department
	enum result: {"PENDING": "PENDING", "FAILED": "FAILED", "PASS": "PASS"}
    
    after_initialize do |variable|
    	variable.result = "PENDING" if variable.new_record?
    end
    scope :pending_exam, ->{where(result: "PENDING")}
    accepts_nested_attributes_for :questions

    def to_s
     self.employee.email
  	end
end
