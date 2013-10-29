require 'test_helper'

class PortfoliosControllerTest < ActionController::TestCase
  setup do
    @portfolio = portfolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portfolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portfolio" do
    assert_difference('Portfolio.count') do
      post :create, portfolio: { amount_raised: @portfolio.amount_raised, bio: @portfolio.bio, company_name: @portfolio.company_name, contact_email: @portfolio.contact_email, contact_name: @portfolio.contact_name, contact_number: @portfolio.contact_number, currency: @portfolio.currency, founded_date: @portfolio.founded_date, industry_sector: @portfolio.industry_sector, status: @portfolio.status, valuation: @portfolio.valuation }
    end

    assert_redirected_to portfolio_path(assigns(:portfolio))
  end

  test "should show portfolio" do
    get :show, id: @portfolio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portfolio
    assert_response :success
  end

  test "should update portfolio" do
    patch :update, id: @portfolio, portfolio: { amount_raised: @portfolio.amount_raised, bio: @portfolio.bio, company_name: @portfolio.company_name, contact_email: @portfolio.contact_email, contact_name: @portfolio.contact_name, contact_number: @portfolio.contact_number, currency: @portfolio.currency, founded_date: @portfolio.founded_date, industry_sector: @portfolio.industry_sector, status: @portfolio.status, valuation: @portfolio.valuation }
    assert_redirected_to portfolio_path(assigns(:portfolio))
  end

  test "should destroy portfolio" do
    assert_difference('Portfolio.count', -1) do
      delete :destroy, id: @portfolio
    end

    assert_redirected_to portfolios_path
  end
end
