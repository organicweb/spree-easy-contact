class PrefixEasyContactColumnName < ActiveRecord::Migration
  def change
    rename_column :spree_contacts, :spree_topic_id, :topic_id unless column_exists?(:spree_contacts, :topic_id)
  end
end
