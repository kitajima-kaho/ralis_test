class RemoveActiveStorageTables < ActiveRecord::Migration[7.1]
  def up
    remove_foreign_key :active_storage_variant_records, :active_storage_blobs if foreign_key_exists?(:active_storage_variant_records, :active_storage_blobs)
    drop_table :active_storage_variant_records if table_exists?(:active_storage_variant_records)
    drop_table :active_storage_attachments if table_exists?(:active_storage_attachments)
    drop_table :active_storage_blobs if table_exists?(:active_storage_blobs)
  end
end


