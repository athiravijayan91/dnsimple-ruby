class CreateDomains < ActiveRecord::Migration[5.1]
  def change
    create_table :domains do |t|
      t.string :name
      t.text :aboutdomain
      t.string :dns

      t.timestamps   #instructions to update db
    end
  end
end
