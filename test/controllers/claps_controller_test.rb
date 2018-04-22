require 'test_helper'

class ClapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clap = claps(:one)
  end

  test "should get index" do
    get claps_url
    assert_response :success
  end

  test "should get new" do
    get new_clap_url
    assert_response :success
  end

  test "should create clap" do
    assert_difference('Clap.count') do
      post claps_url, params: { clap: { idea_id: @clap.idea_id, user_name: @clap.user_name } }
    end

    assert_redirected_to clap_url(Clap.last)
  end

  test "should show clap" do
    get clap_url(@clap)
    assert_response :success
  end

  test "should get edit" do
    get edit_clap_url(@clap)
    assert_response :success
  end

  test "should update clap" do
    patch clap_url(@clap), params: { clap: { idea_id: @clap.idea_id, user_name: @clap.user_name } }
    assert_redirected_to clap_url(@clap)
  end

  test "should destroy clap" do
    assert_difference('Clap.count', -1) do
      delete clap_url(@clap)
    end

    assert_redirected_to claps_url
  end
end
