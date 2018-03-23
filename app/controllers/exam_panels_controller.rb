class ExamPanelsController < ApplicationController
  before_action :authenticate_employee!
  
  def index
  	@has_pending_exam = current_employee.exam_logs.pending_exam.present?
  end

  def new
  	@exam_log = current_employee.exam_logs.pending_exam.last
  end

  def create
  end

  def show
  end
end
