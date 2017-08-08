require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @quiz = quizzes(:one)
    @user = users(:michael)
  end
  
  test "other quiz is valid" do
    assert @quiz.valid?
  end

 test "title should be present" do
    @quiz.title = nil
    assert_not @quiz.valid?
   end

end
