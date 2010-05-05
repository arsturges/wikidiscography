require 'test_helper'

class SkillsControllerTest < ActionController::TestCase

  def setup
    @s = Factory(:skill)
  end

  def teardown
    Skill.destroy_all
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill" do
    assert_difference('Skill.count') do
      post :create, :skill => {:skill => "new skill", :abbreviation => "llkj", :sort => 53 }
    end

    assert_redirected_to skill_path(assigns(:skill))
  end

  test "should show skill" do
    get :show, :id => @s.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @s.id
    assert_response :success
  end

  test "should update skill" do
    put :update, :id => @s.id, :skill => {:sort => 54 }
    assert_redirected_to skill_path(assigns(:skill))
  end

  test "should destroy skill" do
    assert_difference('Skill.count', -1) do
      delete :destroy, :id => @s.id
    end

    assert_redirected_to skills_path
  end
end
