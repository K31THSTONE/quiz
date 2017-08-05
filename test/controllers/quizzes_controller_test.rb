#require 'test_helper'
#
#class QuizzesControllerTest < ActionDispatch::IntegrationTest
#  require 'test_helper'#
#
#  def setup
#    @quiz = quizzes(:one)
#  end#
#
#  test "should redirect create when not logged in" do
#    assert_no_difference 'Quiz.count' do
#      post quizzes_path, params: { quiz: { title: "Lorem ipsum" } }
#    end
#    assert_redirected_to login_url
#  end

#  test "should redirect destroy when not logged in" do
#    assert_no_difference 'Quiz.count' do
 #     delete quizzes_path(@quiz)
#    end
#    assert_redirected_to login_url
#  end
#  
#  test "should redirect destroy for wrong quiz" do
#    log_in_as(users(:michael))
#    quiz = quizzes(:three)
#    assert_no_difference 'Quiz.count' do
#      delete quiz_path(quiz)
#    end
#    assert_redirected_to root_url
#  end

#end
