require 'test_helper'

class TblCompaniesControllerTest < ActionController::TestCase
  setup do
    @tbl_company = tbl_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tbl_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tbl_company" do
    assert_difference('TblCompany.count') do
      post :create, tbl_company: {  }
    end

    assert_redirected_to tbl_company_path(assigns(:tbl_company))
  end

  test "should show tbl_company" do
    get :show, id: @tbl_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tbl_company
    assert_response :success
  end

  test "should update tbl_company" do
    patch :update, id: @tbl_company, tbl_company: {  }
    assert_redirected_to tbl_company_path(assigns(:tbl_company))
  end

  test "should destroy tbl_company" do
    assert_difference('TblCompany.count', -1) do
      delete :destroy, id: @tbl_company
    end

    assert_redirected_to tbl_companies_path
  end
end
