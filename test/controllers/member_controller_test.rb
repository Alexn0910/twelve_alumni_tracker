require "test_helper"

class MemberControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get member_index_url
    assert_response :success
  end

  test "should get show" do
    get member_show_url
    assert_response :success
  end

  test "should get edit" do
    get member_edit_url
    assert_response :success
  end

  test "should get new" do
    get member_new_url
    assert_response :success
  end

  test "should get delete" do
    get member_delete_url
    assert_response :success
  end
end
