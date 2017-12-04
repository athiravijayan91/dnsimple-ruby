class CreateHostings < ActiveRecord::Migration[5.1]
  def change
    create_table :hostings do |t|
      t.string :domain_name
      t.integer :domain_id

      t.timestamps
    end
  end
end
