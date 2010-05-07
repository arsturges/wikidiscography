require 'test_helper'

class SongsControllerTest < ActionController::TestCase

  def setup
    @s = Factory(:song)
  end

  def teardown
    Song.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:songs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post :create, :song => { :title => "new song", :song_form_id => 1 }
    end

    assert_redirected_to song_path(assigns(:song))
  end

  test "should show song" do
    get :show, :id => @s.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @s.id
    assert_response :success
  end

  test "should update song" do
    put :update, :id =>@s.id, :song => { :title => "updated title"}
    assert_redirected_to song_path(assigns(:song))
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete :destroy, :id => @s.id
    end

    assert_redirected_to songs_path
  end
end
