class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.integer :domain_id
      t.string :domain_name

      t.timestamps
    end
  end
end
