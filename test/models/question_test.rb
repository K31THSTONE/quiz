require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  def setup
    @question = Question.new(title: "Who won the last Super Bowl")
  end
  
  test "title should be present" do
    @quiz.title = nil
    assert_not @quiz.valid?
  end
  
end
