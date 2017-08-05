require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  def setup
    @quiz = quizzes(:one)
    @question = @quiz.questions.build(title: "Who won the most recent Super Bowl?")
  end
  
  test "should be valid" do
    assert @question.valid?
  end
  
  test "quiz id should be present" do
    @question.quiz_id = nil
    assert_not @question.valid?
  end
  
  test "title should be present" do
    @question.title = nil
    assert_not @question.valid?
  end
  
  test "associated answers should be destroyed" do
    @question.save
    @question.answers.create!(content: "Lorem ipsum", correct: true)
    assert_difference 'Answer.count', -1 do
      @question.destroy
    end
  end

end
