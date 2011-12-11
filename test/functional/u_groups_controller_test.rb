require 'test_helper'

class UGroupsControllerTest < ActionController::TestCase
  setup do
    @u_group = u_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:u_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create u_group" do
    assert_difference('UGroup.count') do
      post :create, u_group: @u_group.attributes
    end

    assert_redirected_to u_group_path(assigns(:u_group))
  end

  test "should show u_group" do
    get :show, id: @u_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @u_group.to_param
    assert_response :success
  end

  test "should update u_group" do
    put :update, id: @u_group.to_param, u_group: @u_group.attributes
    assert_redirected_to u_group_path(assigns(:u_group))
  end

  test "should destroy u_group" do
    assert_difference('UGroup.count', -1) do
      delete :destroy, id: @u_group.to_param
    end

    assert_redirected_to u_groups_path
  end
end
