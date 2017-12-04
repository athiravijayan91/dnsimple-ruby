class CreateEmailForwardings < ActiveRecord::Migration[5.1]
  def change
    create_table :email_forwardings do |t|
      t.string :domain_name
      t.integer :domain_id

      t.timestamps
    end
  end
end
