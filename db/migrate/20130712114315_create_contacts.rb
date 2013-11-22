class CreateContacts < ActiveRecord::Migration
  def change
    create_table :spree_contacts do |t|
      t.string :name
      t.string :email
      t.string :order_number 
      t.text :message
      t.references :topic

      t.timestamps
    end
    add_index :spree_contacts, :topic_id
  end
end
