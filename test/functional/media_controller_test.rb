require 'test_helper'

class MediaControllerTest < ActionController::TestCase

  def setup
    @m = Factory(:medium)
  end

  def teardown
    Medium.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medium" do
    assert_difference('Medium.count') do
      post :create, :medium => { :medium => "new medium", :sort => 99}
    end

    assert_redirected_to medium_path(assigns(:medium))
  end

  test "should show medium" do
    get :show, :id => @m.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m.id
    assert_response :success
  end

  test "should update medium" do
    put :update, :id => @m.id, :medium => { :sort => 23 }
    assert_redirected_to medium_path(assigns(:medium))
  end

  test "should destroy medium" do
    assert_difference('Medium.count', -1) do
      delete :destroy, :id => @m.id
    end

    assert_redirected_to media_path
  end
end
