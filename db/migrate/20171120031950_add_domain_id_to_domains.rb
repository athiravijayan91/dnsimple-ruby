class AddDomainIdToDomains < ActiveRecord::Migration[5.1]
  def change
    add_column :domains, :domain_id, :integer
  end
end
