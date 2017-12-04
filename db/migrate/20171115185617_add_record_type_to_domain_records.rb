class AddRecordTypeToDomainRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :domain_records, :record_type, :string
  end
end
