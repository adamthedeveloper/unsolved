require 'test_helper'

class MediaItemsControllerTest < ActionController::TestCase
  setup do
    @media_item = media_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_item" do
    assert_difference('MediaItem.count') do
      post :create, media_item: { description: @media_item.description, incident_id: @media_item.incident_id, journalist_id: @media_item.journalist_id, title: @media_item.title }
    end

    assert_redirected_to media_item_path(assigns(:media_item))
  end

  test "should show media_item" do
    get :show, id: @media_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_item
    assert_response :success
  end

  test "should update media_item" do
    patch :update, id: @media_item, media_item: { description: @media_item.description, incident_id: @media_item.incident_id, journalist_id: @media_item.journalist_id, title: @media_item.title }
    assert_redirected_to media_item_path(assigns(:media_item))
  end

  test "should destroy media_item" do
    assert_difference('MediaItem.count', -1) do
      delete :destroy, id: @media_item
    end

    assert_redirected_to media_items_path
  end
end
