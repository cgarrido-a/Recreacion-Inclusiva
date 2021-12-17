require 'test_helper'

class RecomendationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recomendation_index_url
    assert_response :success
  end

end
