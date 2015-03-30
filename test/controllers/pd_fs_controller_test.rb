require 'test_helper'

class PdFsControllerTest < ActionController::TestCase
  setup do
    @pdf = pdfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pdfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pdf" do
    assert_difference('Pdf.count') do
      post :create, pdf: { down_payment: @pdf.down_payment, first_name: @pdf.first_name, intrest_rate: @pdf.intrest_rate, last_name: @pdf.last_name, loan_ammount: @pdf.loan_ammount }
    end

    assert_redirected_to pdf_path(assigns(:pdf))
  end

  test "should show pdf" do
    get :show, id: @pdf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pdf
    assert_response :success
  end

  test "should update pdf" do
    patch :update, id: @pdf, pdf: { down_payment: @pdf.down_payment, first_name: @pdf.first_name, intrest_rate: @pdf.intrest_rate, last_name: @pdf.last_name, loan_ammount: @pdf.loan_ammount }
    assert_redirected_to pdf_path(assigns(:pdf))
  end

  test "should destroy pdf" do
    assert_difference('Pdf.count', -1) do
      delete :destroy, id: @pdf
    end

    assert_redirected_to pdfs_path
  end
end
