require 'test_helper'

class WarningsControllerTest < ActionController::TestCase
  setup do
    @warning = warnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:warnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create warning" do
    assert_difference('Warning.count') do
      post :create, warning: { caution: @warning.caution, liver_warning: @warning.liver_warning, pregnancy_warning: @warning.pregnancy_warning }
    end

    assert_redirected_to warning_path(assigns(:warning))
  end

  test "should show warning" do
    get :show, id: @warning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @warning
    assert_response :success
  end

  test "should update warning" do
    patch :update, id: @warning, warning: { caution: @warning.caution, liver_warning: @warning.liver_warning, pregnancy_warning: @warning.pregnancy_warning }
    assert_redirected_to warning_path(assigns(:warning))
  end

  test "should destroy warning" do
    assert_difference('Warning.count', -1) do
      delete :destroy, id: @warning
    end

    assert_redirected_to warnings_path
  end
end
