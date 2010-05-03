require 'test_helper'

class SessionTypesControllerTest < ActionController::TestCase

  def setup
    @s = Factory(:session_type)
  end

  def teardown
    SessionType.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:session_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session_type" do
    assert_difference('SessionType.count') do
      post :create, :session_type => { :session_type => "new session type" }
    end

    assert_redirected_to session_type_path(assigns(:session_type))
  end

  test "should show session_type" do
    get :show, :id => @s.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @s.id
    assert_response :success
  end

  test "should update session_type" do
    put :update, :id => @s.id, :session_type => {:session_type => "updated session_type" }
    assert_redirected_to session_type_path(assigns(:session_type))
  end

  test "should destroy session_type" do
    assert_difference('SessionType.count', -1) do
      delete :destroy, :id => @s.id
    end

    assert_redirected_to session_types_path
  end
end
