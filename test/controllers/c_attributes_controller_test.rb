require 'test_helper'

class CAttributesControllerTest < ActionController::TestCase
  setup do
    @c_attribute = c_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_attribute" do
    assert_difference('CAttribute.count') do
      post :create, c_attribute: { choice_set_id: @c_attribute.choice_set_id, description: @c_attribute.description, display_order: @c_attribute.display_order, name: @c_attribute.name }
    end

    assert_redirected_to c_attribute_path(assigns(:c_attribute))
  end

  test "should show c_attribute" do
    get :show, id: @c_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_attribute
    assert_response :success
  end

  test "should update c_attribute" do
    patch :update, id: @c_attribute, c_attribute: { choice_set_id: @c_attribute.choice_set_id, description: @c_attribute.description, display_order: @c_attribute.display_order, name: @c_attribute.name }
    assert_redirected_to c_attribute_path(assigns(:c_attribute))
  end

  test "should destroy c_attribute" do
    assert_difference('CAttribute.count', -1) do
      delete :destroy, id: @c_attribute
    end

    assert_redirected_to c_attributes_path
  end
end
