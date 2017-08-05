#require 'test_helper'
#
#class QuizzesInterfaceTest < ActionDispatch::IntegrationTest
#  def setup
#    @user = users(:michael)
#  end
#
#  test "quiz interface" do
#    log_in_as(@user)
#    get root_path
#    #assert_select 'div.pagination'
#    # Invalid submission
#    assert_no_difference 'Quiz.count' do
#      post quizzes_path, params: { quiz: { title: "" } }
#    end
#    assert_select 'div#error_explanation'
#    # Valid submission
 #   title = "Wubalubadubdub"
#    assert_difference 'Quiz.count', 1 do
#      post quizzes_path, params: { quiz: { title: title } }
#    end
 #   assert_redirected_to root_url
#    follow_redirect!
#    assert_match title, response.body
#    # Delete post
#    assert_select 'a', text: 'delete'
#    first_quiz = @user.quizzes.paginate(page: 1).first
#    assert_difference 'Quiz.count', -1 do
#      delete quiz_path(first_quiz)
#    end
#  end

#end
