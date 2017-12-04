require 'test_helper'

class SslCertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ssl_certificate = ssl_certificates(:one)
  end

  test "should get index" do
    get ssl_certificates_url
    assert_response :success
  end

  test "should get new" do
    get new_ssl_certificate_url
    assert_response :success
  end

  test "should create ssl_certificate" do
    assert_difference('SslCertificate.count') do
      post ssl_certificates_url, params: { ssl_certificate: { domain_id: @ssl_certificate.domain_id, domain_name: @ssl_certificate.domain_name } }
    end

    assert_redirected_to ssl_certificate_url(SslCertificate.last)
  end

  test "should show ssl_certificate" do
    get ssl_certificate_url(@ssl_certificate)
    assert_response :success
  end

  test "should get edit" do
    get edit_ssl_certificate_url(@ssl_certificate)
    assert_response :success
  end

  test "should update ssl_certificate" do
    patch ssl_certificate_url(@ssl_certificate), params: { ssl_certificate: { domain_id: @ssl_certificate.domain_id, domain_name: @ssl_certificate.domain_name } }
    assert_redirected_to ssl_certificate_url(@ssl_certificate)
  end

  test "should destroy ssl_certificate" do
    assert_difference('SslCertificate.count', -1) do
      delete ssl_certificate_url(@ssl_certificate)
    end

    assert_redirected_to ssl_certificates_url
  end
end
