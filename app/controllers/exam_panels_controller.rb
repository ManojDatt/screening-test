class ExamPanelsController < ApplicationController
  before_action :authenticate_employee!
  
  def index
  	@has_pending_exam = current_employee.exam_logs.pending_exam.present?
  end

  def new
    @exam = current_employee.exam_logs.pending_exam.last
  	@questions = @exam.questions
  end

  def create
    binding.pry
  end

  def show
  end
end
