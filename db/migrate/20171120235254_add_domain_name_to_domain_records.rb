class AddDomainNameToDomainRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :domain_records, :domain_name, :string
  end
end
