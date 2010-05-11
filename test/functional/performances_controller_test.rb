require 'test_helper'

class PerformancesControllerTest < ActionController::TestCase

  def setup
    @p = Factory(:performance)
  end

  def teardown
    Performance.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance" do
    assert_difference('Performance.count') do
      post :create, :performance => { 
        :session_id => 1,
        :song_id => 1,
        :performance_type_id => 1,
        :duration => "00:03:00"
        }
    end

    assert_redirected_to performance_path(assigns(:performance))
  end

  test "should show performance" do
    get :show, :id => @p.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @p.id
    assert_response :success
  end

  test "should update performance" do
    put :update, :id => @p.id, :performance => { :performance_type_id => 2 }
    assert_redirected_to performance_path(assigns(:performance))
  end

  test "should destroy performance" do
    assert_difference('Performance.count', -1) do
      delete :destroy, :id => @p.id
    end

    assert_redirected_to performances_path
  end
end
