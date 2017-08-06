require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  def setup
    @answer = answers(:one)
  end
  
  test "content must be present" do
    @answer.content = nil
    assert_not @answer.valid?
  end
  
end
