class CreateSubdomains < ActiveRecord::Migration
  def change
    create_table :subdomains do |t|
      t.text :description
      t.string :subdomain

      t.timestamps null: false
    end
  end
end
