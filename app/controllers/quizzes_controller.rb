class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end
  
  def new
    @quiz = Quiz.new
  end
  
  def create
    @quiz = current_user.quizzes.build(quiz_params)
    if @quiz.save
      redirect_to createQuestion_url
    else
      render static_pages/home
    end
  end  
      
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:title)
    end
end
