class UpdateSchemaVersion < ActiveRecord::Migration[7.0]
  def change
    if table_exists?(:schema_migrations)
      execute <<-SQL
        DELETE FROM schema_migrations
        WHERE version IN ('20240923063827', '20240923063828', '20240923063903', '20240923063904');
      SQL
    end
  end
end
