require 'test_helper'

class QuizTest < ActiveSupport::TestCase
 def setup
   @quiz- = Quiz.new(title: "Most Recent Super Bowl Facts")
 end
 
 test "title must be present" do
   @quiz.title = nil
   assert_not @quiz.valid?
 end
 
end
