require 'test_helper'

class MusicSessionsControllerTest < ActionController::TestCase

  def setup
    @s = Factory(:music_session)
  end

  def teardown
    MusicSession.destroy_all
    Country.destroy_all
    State.destroy_all
    MusicSessionType.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music_session" do
    assert_difference('Session.count') do
      post :create, :music_session => { :music_session_date => 2010-10-16, :country_id => 5  }
    end

    assert_redirected_to music_session_path(assigns(:music_session))
  end

  test "should show music_session" do
    get :show, :id => @s.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @s.id
    assert_response :success
  end

  test "should update music_session" do
    put :update, :id => @s.id, :music_session => { :country_id => 3 }
    assert_redirected_to music_session_path(assigns(:music_session))
  end

  test "should destroy music_session" do
    assert_difference('Session.count', -1) do
      delete :destroy, :id => @s.id
    end

    assert_redirected_to music_sessions_path
  end
end
