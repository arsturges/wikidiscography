require 'test_helper'

class SongFormsControllerTest < ActionController::TestCase
  def setup
    @s = Factory(:song_form)
  end

  def teardown
    SongForm.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_form" do
    assert_difference('SongForm.count') do
      post :create, :song_form => { :song_form => "new song form" }
    end

    assert_redirected_to song_form_path(assigns(:song_form))
  end

  test "should show song_form" do
    get :show, :id => @s.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @s.id
    assert_response :success
  end

  test "should update song_form" do
    put :update, :id => @s.id, :song_form => { :song_form => "updated song form"}
    assert_redirected_to song_form_path(assigns(:song_form))
  end

  test "should destroy song_form" do
    assert_difference('SongForm.count', -1) do
      delete :destroy, :id => @s.id
    end

    assert_redirected_to song_forms_path
  end
end
