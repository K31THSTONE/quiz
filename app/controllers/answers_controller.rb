class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end
  
  def new
    @answer = Answer.new
  end
  
  def show
    @answer = Answer.find(params[:id])
  end
  
  def create
    @answer = Question.first.answers.build(answer_params)
    if @answer.save
      redirect_to root_url
    else
      render static_pages/home
    end
  end  
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:content, :correct)
    end
end
