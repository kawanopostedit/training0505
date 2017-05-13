require 'test_helper'

class TunitsControllerTest < ActionController::TestCase
  setup do
    @tunit = tunits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tunits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tunit" do
    assert_difference('Tunit.count') do
      post :create, tunit: { source: @tunit.source, target: @tunit.target }
    end

    assert_redirected_to tunit_path(assigns(:tunit))
  end

  test "should show tunit" do
    get :show, id: @tunit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tunit
    assert_response :success
  end

  test "should update tunit" do
    patch :update, id: @tunit, tunit: { source: @tunit.source, target: @tunit.target }
    assert_redirected_to tunit_path(assigns(:tunit))
  end

  test "should destroy tunit" do
    assert_difference('Tunit.count', -1) do
      delete :destroy, id: @tunit
    end

    assert_redirected_to tunits_path
  end
end
