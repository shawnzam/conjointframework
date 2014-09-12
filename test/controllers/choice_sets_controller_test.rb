require 'test_helper'

class ChoiceSetsControllerTest < ActionController::TestCase
  setup do
    @choice_set = choice_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choice_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choice_set" do
    assert_difference('ChoiceSet.count') do
      post :create, choice_set: { name: @choice_set.name }
    end

    assert_redirected_to choice_set_path(assigns(:choice_set))
  end

  test "should show choice_set" do
    get :show, id: @choice_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @choice_set
    assert_response :success
  end

  test "should update choice_set" do
    patch :update, id: @choice_set, choice_set: { name: @choice_set.name }
    assert_redirected_to choice_set_path(assigns(:choice_set))
  end

  test "should destroy choice_set" do
    assert_difference('ChoiceSet.count', -1) do
      delete :destroy, id: @choice_set
    end

    assert_redirected_to choice_sets_path
  end
end
