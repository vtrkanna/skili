require 'test_helper'

class TeachingPeriodsControllerTest < ActionController::TestCase
  setup do
    @teaching_period = teaching_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teaching_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teaching_period" do
    assert_difference('TeachingPeriod.count') do
      post :create, teaching_period: {}
    end

    assert_redirected_to teaching_period_path(assigns(:teaching_period))
  end

  test "should show teaching_period" do
    get :show, id: @teaching_period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teaching_period
    assert_response :success
  end

  test "should update teaching_period" do
    patch :update, id: @teaching_period, teaching_period: {}
    assert_redirected_to teaching_period_path(assigns(:teaching_period))
  end

  test "should destroy teaching_period" do
    assert_difference('TeachingPeriod.count', -1) do
      delete :destroy, id: @teaching_period
    end

    assert_redirected_to teaching_periods_path
  end
end
