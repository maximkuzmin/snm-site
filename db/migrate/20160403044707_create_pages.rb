class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :content
      t.text :header
      t.string :link_name
      t.references :subdomain
      t.integer :orders

      t.timestamps null: false
    end
  end
end
