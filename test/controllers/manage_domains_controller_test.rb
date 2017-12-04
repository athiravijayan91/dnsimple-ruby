require 'test_helper'

class ManageDomainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manage_domain = manage_domains(:one)
  end

  test "should get index" do
    get manage_domains_url
    assert_response :success
  end

  test "should get new" do
    get new_manage_domain_url
    assert_response :success
  end

  test "should create manage_domain" do
    assert_difference('ManageDomain.count') do
      post manage_domains_url, params: { manage_domain: { domain_id: @manage_domain.domain_id, domain_name: @manage_domain.domain_name } }
    end

    assert_redirected_to manage_domain_url(ManageDomain.last)
  end

  test "should show manage_domain" do
    get manage_domain_url(@manage_domain)
    assert_response :success
  end

  test "should get edit" do
    get edit_manage_domain_url(@manage_domain)
    assert_response :success
  end

  test "should update manage_domain" do
    patch manage_domain_url(@manage_domain), params: { manage_domain: { domain_id: @manage_domain.domain_id, domain_name: @manage_domain.domain_name } }
    assert_redirected_to manage_domain_url(@manage_domain)
  end

  test "should destroy manage_domain" do
    assert_difference('ManageDomain.count', -1) do
      delete manage_domain_url(@manage_domain)
    end

    assert_redirected_to manage_domains_url
  end
end
