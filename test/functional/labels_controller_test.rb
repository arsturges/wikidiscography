require 'test_helper'

class LabelsControllerTest < ActionController::TestCase

  def setup
    @l = Factory(:label)
  end

  def teardown
    Label.destroy_all
  end
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:labels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create label" do
    assert_difference('Label.count') do
      post :create, :label => { :label => "new label", :country_id => 233 }
    end

    assert_redirected_to label_path(assigns(:label))
  end

  test "should show label" do
    get :show, :id => @l.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @l.id
    assert_response :success
  end

  test "should update label" do
    put :update, :id => @l.id, :label => { :country_id => 232 }
    assert_redirected_to label_path(assigns(:label))
  end

  test "should destroy label" do
    assert_difference('Label.count', -1) do
      delete :destroy, :id => @l.id
    end

    assert_redirected_to labels_path
  end
end
