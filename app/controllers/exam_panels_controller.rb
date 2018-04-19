class ExamPanelsController < ApplicationController
  before_action :authenticate_employee!
  
  def index
  	@has_pending_exam = current_employee.exam_logs.pending_exam.present?
  end

  def unauthorized
    
  end

  def new
    @exam = current_employee.exam_logs.pending_exam.last
  	@questions = @exam.questions
  end

  def create
    @exam = current_employee.exam_logs.pending_exam.last
    total_question = exam_params[:questions_attributes].count
    correct_answer = 0
    exam_params[:questions_attributes].each do |index, value|
      question = Answer.where(id: value[:is_correct], question_id: value[:id]) if value[:is_correct].present?
      if question.present?
        correct_answer +=1
      end
    end
    if total_question == correct_answer
      result = "PASS"
    else
      result = "FAILED"
    end
    @exam.update(total_question: total_question, correct: correct_answer, result: result)
    
    flash[:notice] = "Thanks you for your time."
    redirect_to root_path

  end

  def show
  end

  private

  def exam_params
    params.require(:exam_log).permit(:questions_attributes=>[:is_correct, :id])
  end
end
