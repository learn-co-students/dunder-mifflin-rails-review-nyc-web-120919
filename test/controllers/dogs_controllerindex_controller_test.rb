require 'test_helper'

class DogsControllerindexControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dogs_controllerindex_new_url
    assert_response :success
  end

  test "should get create" do
    get dogs_controllerindex_create_url
    assert_response :success
  end

  test "should get delete" do
    get dogs_controllerindex_delete_url
    assert_response :success
  end

  test "should get update" do
    get dogs_controllerindex_update_url
    assert_response :success
  end

  test "should get show" do
    get dogs_controllerindex_show_url
    assert_response :success
  end

  test "should get edit" do
    get dogs_controllerindex_edit_url
    assert_response :success
  end

end
