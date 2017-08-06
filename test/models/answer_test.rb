require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  def setup
    @answer = Answer.new(content: "Patriots", correct: true)
  end
  
  test "content must be present"
    @answer.content = nil
    assert_not @answer.valid?
  end
  
end
