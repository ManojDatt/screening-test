require 'test_helper'

class ExamPanelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exam_panels_index_url
    assert_response :success
  end

  test "should get new" do
    get exam_panels_new_url
    assert_response :success
  end

  test "should get create" do
    get exam_panels_create_url
    assert_response :success
  end

  test "should get show" do
    get exam_panels_show_url
    assert_response :success
  end

end
