class Department < ApplicationRecord
	has_many :exam_logs
	has_many :questions
end
