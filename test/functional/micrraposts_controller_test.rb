require 'test_helper'

class MicrrapostsControllerTest < ActionController::TestCase
  setup do
    @micrrapost = micrraposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micrraposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micrrapost" do
    assert_difference('Micrrapost.count') do
      post :create, micrrapost: { content: @micrrapost.content, user_id: @micrrapost.user_id }
    end

    assert_redirected_to micrrapost_path(assigns(:micrrapost))
  end

  test "should show micrrapost" do
    get :show, id: @micrrapost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micrrapost
    assert_response :success
  end

  test "should update micrrapost" do
    put :update, id: @micrrapost, micrrapost: { content: @micrrapost.content, user_id: @micrrapost.user_id }
    assert_redirected_to micrrapost_path(assigns(:micrrapost))
  end

  test "should destroy micrrapost" do
    assert_difference('Micrrapost.count', -1) do
      delete :destroy, id: @micrrapost
    end

    assert_redirected_to micrraposts_path
  end
end
