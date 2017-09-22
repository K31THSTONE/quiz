class ScoresController < ApplicationController
    def index
    @scores = Score.all
  end
  
  def new
    @score = Score.new
  end
  
  def show
    @scores = Score.find(params[:id])
  end
  
  def create
    @scores = Quiz.first.answers.build(answer_params)
    if @score.save
      redirect_to root_url
    else
      render static_pages/home
    end
  end  
  
  private
    # Never trust parameters from the scary internet, only allow the white list 
through.
    def answer_params
      params.require(:answer).permit(:content, :correct)
    end
end
