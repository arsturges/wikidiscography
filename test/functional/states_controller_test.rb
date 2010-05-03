require 'test_helper'

class StatesControllerTest < ActionController::TestCase

  def setup
    @s = Factory(:state)
  end

  def teardown
    State.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state" do
    assert_difference('State.count') do
      post :create, :state => {:state => "new state", :abbreviation => "ns" }
    end

    assert_redirected_to state_path(assigns(:state))
  end

  test "should show state" do
    get :show, :id => @s.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @s.id
    assert_response :success
  end

  test "should update state" do
    put :update, :id => @s.id, :state => {:state => "updated state" }
    assert_redirected_to state_path(assigns(:state))
  end

  test "should destroy state" do
    assert_difference('State.count', -1) do
      delete :destroy, :id => @s.id
    end

    assert_redirected_to states_path
  end
end
