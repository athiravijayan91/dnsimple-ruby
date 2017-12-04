require 'test_helper'

class EmailForwardingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_forwarding = email_forwardings(:one)
  end

  test "should get index" do
    get email_forwardings_url
    assert_response :success
  end

  test "should get new" do
    get new_email_forwarding_url
    assert_response :success
  end

  test "should create email_forwarding" do
    assert_difference('EmailForwarding.count') do
      post email_forwardings_url, params: { email_forwarding: { domain_id: @email_forwarding.domain_id, domain_name: @email_forwarding.domain_name } }
    end

    assert_redirected_to email_forwarding_url(EmailForwarding.last)
  end

  test "should show email_forwarding" do
    get email_forwarding_url(@email_forwarding)
    assert_response :success
  end

  test "should get edit" do
    get edit_email_forwarding_url(@email_forwarding)
    assert_response :success
  end

  test "should update email_forwarding" do
    patch email_forwarding_url(@email_forwarding), params: { email_forwarding: { domain_id: @email_forwarding.domain_id, domain_name: @email_forwarding.domain_name } }
    assert_redirected_to email_forwarding_url(@email_forwarding)
  end

  test "should destroy email_forwarding" do
    assert_difference('EmailForwarding.count', -1) do
      delete email_forwarding_url(@email_forwarding)
    end

    assert_redirected_to email_forwardings_url
  end
end
