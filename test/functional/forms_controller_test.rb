require 'test_helper'

class FormsControllerTest < ActionController::TestCase
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post :create, form: { actual_address: @form.actual_address, address_on_english: @form.address_on_english, auditors_names: @form.auditors_names, bank: @form.bank, bank_person: @form.bank_person, bik: @form.bik, categories_list_of_works: @form.categories_list_of_works, company: @form.company, correspondent_account: @form.correspondent_account, creator: @form.creator, current_account: @form.current_account, email: @form.email, fax: @form.fax, inn: @form.inn, kpp: @form.kpp, ogrn: @form.ogrn, phone: @form.phone, registered_address: @form.registered_address, type_of_legal_entity: @form.type_of_legal_entity, type_of_sertificate: @form.type_of_sertificate }
    end

    assert_redirected_to form_path(assigns(:form))
  end

  test "should show form" do
    get :show, id: @form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form
    assert_response :success
  end

  test "should update form" do
    put :update, id: @form, form: { actual_address: @form.actual_address, address_on_english: @form.address_on_english, auditors_names: @form.auditors_names, bank: @form.bank, bank_person: @form.bank_person, bik: @form.bik, categories_list_of_works: @form.categories_list_of_works, company: @form.company, correspondent_account: @form.correspondent_account, creator: @form.creator, current_account: @form.current_account, email: @form.email, fax: @form.fax, inn: @form.inn, kpp: @form.kpp, ogrn: @form.ogrn, phone: @form.phone, registered_address: @form.registered_address, type_of_legal_entity: @form.type_of_legal_entity, type_of_sertificate: @form.type_of_sertificate }
    assert_redirected_to form_path(assigns(:form))
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete :destroy, id: @form
    end

    assert_redirected_to forms_path
  end
end
