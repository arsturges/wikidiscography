require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase

  def setup
    @a = Factory(:artist)
  end

  def teardown
    Artist.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post :create, :artist => {:first => "Armando Anthony", :last => "Corea", :display_name => "Chick Corea", :skill_id => 2, :birth => "1941-04-25", :death => nil, :birth_place => "Chelsea, MA", :death_place => nil }
    end

    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should show artist" do
    get :show, :id => @a.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @a.id
    assert_response :success
  end

  test "should update artist" do
    put :update, :id => @a.id, :artist => { :display_name => "new display", :death => "2010-05-03", :death_place => "Berkeley, CA" }
    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, :id => @a.id
    end

    assert_redirected_to artists_path
  end
end
