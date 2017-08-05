require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  def setup
    @question = questions(:one)
    @answer = @question.answers.build(content: "Patriots", correct: true)
  end
  
  test "should be valid" do
    assert @answer.valid?
  end
  
  test "question id should be present" do
    @answer.question_id = nil
    assert_not @answer.valid?
  end
  
  test "content should be present" do
    @answer.content = nil
    assert_not @answer.valid?
  end
  
end
