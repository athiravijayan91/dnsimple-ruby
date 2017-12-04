class AddIpv6AddressAndAlgorithmAndFingerprintTypeAndFingerPrintAndCpuAndOperatingSystemAndProviderAndCertificateTypeAndEmailAndTagAndValueToDomainRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :domain_records, :ipv6_address, :string
    add_column :domain_records, :algorithm, :string
    add_column :domain_records, :fingerprint_type, :string
    add_column :domain_records, :finger_print, :text
    add_column :domain_records, :cpu, :string
    add_column :domain_records, :operating_system, :string
    add_column :domain_records, :provider, :string
    add_column :domain_records, :certificate_type, :string
    add_column :domain_records, :email, :string
    add_column :domain_records, :tag, :string
    add_column :domain_records, :value, :string
  end
end
