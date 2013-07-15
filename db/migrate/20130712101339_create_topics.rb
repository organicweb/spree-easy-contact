class CreateTopics < ActiveRecord::Migration
  def change
    create_table :spree_topics do |t|
      t.string :title
      t.string :email
      t.boolean :active

      t.timestamps
    end
  end
end
