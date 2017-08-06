class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end
  
  def new
    @answer = Answer.new
  end
  
  def create
    @answer = Question.redorder("answers.created_at :desc").first.answers.build(answer_params)
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
