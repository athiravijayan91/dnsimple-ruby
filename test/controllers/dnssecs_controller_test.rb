require 'test_helper'

class DnssecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dnssec = dnssecs(:one)
  end

  test "should get index" do
    get dnssecs_url
    assert_response :success
  end

  test "should get new" do
    get new_dnssec_url
    assert_response :success
  end

  test "should create dnssec" do
    assert_difference('Dnssec.count') do
      post dnssecs_url, params: { dnssec: { domain_id: @dnssec.domain_id, domain_name: @dnssec.domain_name } }
    end

    assert_redirected_to dnssec_url(Dnssec.last)
  end

  test "should show dnssec" do
    get dnssec_url(@dnssec)
    assert_response :success
  end

  test "should get edit" do
    get edit_dnssec_url(@dnssec)
    assert_response :success
  end

  test "should update dnssec" do
    patch dnssec_url(@dnssec), params: { dnssec: { domain_id: @dnssec.domain_id, domain_name: @dnssec.domain_name } }
    assert_redirected_to dnssec_url(@dnssec)
  end

  test "should destroy dnssec" do
    assert_difference('Dnssec.count', -1) do
      delete dnssec_url(@dnssec)
    end

    assert_redirected_to dnssecs_url
  end
end
