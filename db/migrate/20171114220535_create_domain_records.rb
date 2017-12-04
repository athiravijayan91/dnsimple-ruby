class CreateDomainRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :domain_records do |t|
      
      t.timestamps
    end
  end
end
