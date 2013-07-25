require 'test_helper'

class CategoriesOfCertificateTypesControllerTest < ActionController::TestCase
  setup do
    @categories_of_certificate_type = categories_of_certificate_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories_of_certificate_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categories_of_certificate_type" do
    assert_difference('CategoriesOfCertificateType.count') do
      post :create, categories_of_certificate_type: { name: @categories_of_certificate_type.name, price: @categories_of_certificate_type.price }
    end

    assert_redirected_to categories_of_certificate_type_path(assigns(:categories_of_certificate_type))
  end

  test "should show categories_of_certificate_type" do
    get :show, id: @categories_of_certificate_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categories_of_certificate_type
    assert_response :success
  end

  test "should update categories_of_certificate_type" do
    put :update, id: @categories_of_certificate_type, categories_of_certificate_type: { name: @categories_of_certificate_type.name, price: @categories_of_certificate_type.price }
    assert_redirected_to categories_of_certificate_type_path(assigns(:categories_of_certificate_type))
  end

  test "should destroy categories_of_certificate_type" do
    assert_difference('CategoriesOfCertificateType.count', -1) do
      delete :destroy, id: @categories_of_certificate_type
    end

    assert_redirected_to categories_of_certificate_types_path
  end
end
