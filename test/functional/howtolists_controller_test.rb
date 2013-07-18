require 'test_helper'

class HowtolistsControllerTest < ActionController::TestCase
  setup do
    @howtolist = howtolists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:howtolists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create howtolist" do
    assert_difference('Howtolist.count') do
      post :create, howtolist: { content: @howtolist.content, product_id: @howtolist.product_id, title: @howtolist.title }
    end

    assert_redirected_to howtolist_path(assigns(:howtolist))
  end

  test "should show howtolist" do
    get :show, id: @howtolist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @howtolist
    assert_response :success
  end

  test "should update howtolist" do
    put :update, id: @howtolist, howtolist: { content: @howtolist.content, product_id: @howtolist.product_id, title: @howtolist.title }
    assert_redirected_to howtolist_path(assigns(:howtolist))
  end

  test "should destroy howtolist" do
    assert_difference('Howtolist.count', -1) do
      delete :destroy, id: @howtolist
    end

    assert_redirected_to howtolists_path
  end
end
