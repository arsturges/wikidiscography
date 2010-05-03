require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  def setup
    @s = Factory(:session)
  end

  def teardown
    Session.destroy_all
    Country.destroy_all
    State.destroy_all
    SessionType.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session" do
    assert_difference('Session.count') do
      post :create, :session => { :session_date => 2010-05-01, :country_id => 1  }
    end

    assert_redirected_to session_path(assigns(:session))
  end

  test "should show session" do
    get :show, :id => @s.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @s.id
    assert_response :success
  end

  test "should update session" do
    put :update, :id => @s.id, :session => { :country_id => 3 }
    assert_redirected_to session_path(assigns(:session))
  end

  test "should destroy session" do
    assert_difference('Session.count', -1) do
      delete :destroy, :id => @s.id
    end

    assert_redirected_to sessions_path
  end
end
