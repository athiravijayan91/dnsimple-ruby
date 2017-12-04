require 'test_helper'

class HostingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hosting = hostings(:one)
  end

  test "should get index" do
    get hostings_url
    assert_response :success
  end

  test "should get new" do
    get new_hosting_url
    assert_response :success
  end

  test "should create hosting" do
    assert_difference('Hosting.count') do
      post hostings_url, params: { hosting: { domain_id: @hosting.domain_id, domain_name: @hosting.domain_name } }
    end

    assert_redirected_to hosting_url(Hosting.last)
  end

  test "should show hosting" do
    get hosting_url(@hosting)
    assert_response :success
  end

  test "should get edit" do
    get edit_hosting_url(@hosting)
    assert_response :success
  end

  test "should update hosting" do
    patch hosting_url(@hosting), params: { hosting: { domain_id: @hosting.domain_id, domain_name: @hosting.domain_name } }
    assert_redirected_to hosting_url(@hosting)
  end

  test "should destroy hosting" do
    assert_difference('Hosting.count', -1) do
      delete hosting_url(@hosting)
    end

    assert_redirected_to hostings_url
  end
end
