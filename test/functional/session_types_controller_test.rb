require 'test_helper'

class MusicSessionTypesControllerTest < ActionController::TestCase

  def setup
    @s = Factory(:music_session_type)
  end

  def teardown
    MusicSessionType.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_session_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music_session_type" do
    assert_difference('SessionType.count') do
      post :create, :music_session_type => { :music_session_type => "new music_session type" }
    end

    assert_redirected_to music_session_type_path(assigns(:music_session_type))
  end

  test "should show music_session_type" do
    get :show, :id => @s.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @s.id
    assert_response :success
  end

  test "should update music_session_type" do
    put :update, :id => @s.id, :music_session_type => {:music_session_type => "updated music_session_type" }
    assert_redirected_to music_session_type_path(assigns(:music_session_type))
  end

  test "should destroy music_session_type" do
    assert_difference('SessionType.count', -1) do
      delete :destroy, :id => @s.id
    end

    assert_redirected_to music_session_types_path
  end
end
