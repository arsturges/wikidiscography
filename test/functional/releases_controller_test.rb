require 'test_helper'

class ReleasesControllerTest < ActionController::TestCase

  def setup
    @r = Factory(:release)
  end

  def teardown
    Release.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:releases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create release" do
    assert_difference('Release.count') do
      post :create, :release => { :title => "Zooropa", :sort_title => "Zooropa", :label_id => 1, :catalogue_number => "24x999402", :medium_id => 2, :issue_date => "1997-04-12", :volumes => 1 }
    end

    assert_redirected_to release_path(assigns(:release))
  end

  test "should show release" do
    get :show, :id => @r.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @r.id
    assert_response :success
  end

  test "should update release" do
    put :update, :id => @r.id, :release => { :catalogue_number => "Z999020024"}
    assert_redirected_to release_path(assigns(:release))
  end

  test "should destroy release" do
    assert_difference('Release.count', -1) do
      delete :destroy, :id => @r.id
    end

    assert_redirected_to releases_path
  end
end
