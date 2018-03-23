class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:lockable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :exam_logs
end
