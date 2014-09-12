require 'test_helper'

class ChoiceRowsControllerTest < ActionController::TestCase
  setup do
    @choice_row = choice_rows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choice_rows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choice_row" do
    assert_difference('ChoiceRow.count') do
      post :create, choice_row: { choice_set_id: @choice_row.choice_set_id, display_order: @choice_row.display_order }
    end

    assert_redirected_to choice_row_path(assigns(:choice_row))
  end

  test "should show choice_row" do
    get :show, id: @choice_row
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @choice_row
    assert_response :success
  end

  test "should update choice_row" do
    patch :update, id: @choice_row, choice_row: { choice_set_id: @choice_row.choice_set_id, display_order: @choice_row.display_order }
    assert_redirected_to choice_row_path(assigns(:choice_row))
  end

  test "should destroy choice_row" do
    assert_difference('ChoiceRow.count', -1) do
      delete :destroy, id: @choice_row
    end

    assert_redirected_to choice_rows_path
  end
end
