require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  def setup
    @question = questions(:one)
  end
  
  test "title should be present" do
    @question.title = nil
    assert_not @question.valid?
  end
  
end
