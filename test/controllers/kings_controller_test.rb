require 'test_helper'

class KingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @king = kings(:one)
  end

  test "should get index" do
    get kings_url
    assert_response :success
  end

  test "should get new" do
    get new_king_url
    assert_response :success
  end

  test "should create king" do
    assert_difference('King.count') do
      post kings_url, params: { king: {  } }
    end

    assert_redirected_to king_url(King.last)
  end

  test "should show king" do
    get king_url(@king)
    assert_response :success
  end

  test "should get edit" do
    get edit_king_url(@king)
    assert_response :success
  end

  test "should update king" do
    patch king_url(@king), params: { king: {  } }
    assert_redirected_to king_url(@king)
  end

  test "should destroy king" do
    assert_difference('King.count', -1) do
      delete king_url(@king)
    end

    assert_redirected_to kings_url
  end
end
