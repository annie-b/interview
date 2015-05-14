require 'test_helper'

class UrlsControllerTest < ActionController::TestCase
  setup do
    @url = urls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:urls)
  end

  test "should create url" do
    assert_difference('Url.count') do
      post :create, url: { long_url: @url.long_url, token: @url.token }
    end

    assert_response 201
  end

  test "should show url" do
    get :show, id: @url
    assert_response :success
  end

  test "should update url" do
    put :update, id: @url, url: { long_url: @url.long_url, token: @url.token }
    assert_response 204
  end

  test "should destroy url" do
    assert_difference('Url.count', -1) do
      delete :destroy, id: @url
    end

    assert_response 204
  end
end
