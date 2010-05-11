require 'test_helper'

class PerformanceTypesControllerTest < ActionController::TestCase

  def setup
    @p = Factory(:performance_type)
  end

  def teardown
    PerformanceType.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performance_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance_type" do
    assert_difference('PerformanceType.count') do
      post :create, :performance_type => { :performance_type => "new performance type" }
    end

    assert_redirected_to performance_type_path(assigns(:performance_type))
  end

  test "should show performance_type" do
    get :show, :id => @p.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @p.id
    assert_response :success
  end

  test "should update performance_type" do
    put :update, :id => @p.id, :performance_type => { :performance_type => "updated perfromance type"}
    assert_redirected_to performance_type_path(assigns(:performance_type))
  end

  test "should destroy performance_type" do
    assert_difference('PerformanceType.count', -1) do
      delete :destroy, :id => @p.id
    end

    assert_redirected_to performance_types_path
  end
end
