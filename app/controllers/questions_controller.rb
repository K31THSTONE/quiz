class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  
  def new
    @question = Question.new
  end
  
  def create
    @question = Quiz.first.questions.build(question_params)
    if @question.save
      redirect_to new_answer_url
    else
      render static_pages/home
    end
  end  
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:title)
    end
end
