require 'test_helper'

class SuspectsControllerTest < ActionController::TestCase
  setup do
    @suspect = suspects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suspects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suspect" do
    assert_difference('Suspect.count') do
      post :create, suspect: {  }
    end

    assert_redirected_to suspect_path(assigns(:suspect))
  end

  test "should show suspect" do
    get :show, id: @suspect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suspect
    assert_response :success
  end

  test "should update suspect" do
    patch :update, id: @suspect, suspect: {  }
    assert_redirected_to suspect_path(assigns(:suspect))
  end

  test "should destroy suspect" do
    assert_difference('Suspect.count', -1) do
      delete :destroy, id: @suspect
    end

    assert_redirected_to suspects_path
  end
end
