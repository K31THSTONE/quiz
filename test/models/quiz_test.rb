require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @quiz = @user.quizzes.build(title: "Most Recent Super Bowl Facts")
  end
  
  test "should be valid" do
    assert @quiz.valid?
  end
  
  test "user id should be present" do
    @quiz.user_id = nil
    assert_not @quiz.valid?
  end
  
  test "title should be present" do
    @quiz.title = nil
    assert_not @quiz.valid?
  end
  
  test "associated questions should be destroyed" do
    @quiz.save
    @quiz.questions.create!(title: "Something really cool")
    assert_difference 'Question.count', -1 do
      @quiz.destroy
    end
  end

end
