require 'test_helper'

class QuizTest < ActiveSupport::TestCase
 def setup
  @quiz = quizzes(:one)
 end
 
 test "title must be present" do
   @quiz.title = nil
   assert_not @quiz.valid?
 end
 
end
