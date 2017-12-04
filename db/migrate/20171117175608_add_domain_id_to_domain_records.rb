class AddDomainIdToDomainRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :domain_records, :domain_id, :integer
  end
end
