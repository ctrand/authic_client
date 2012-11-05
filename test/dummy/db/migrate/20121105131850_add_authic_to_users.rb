class AddAuthicToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string :email, :null => false, :default => "" unless t.column_exists?(:email)
      t.string :provider unless t.column_exists?(:provider)
      t.string :uid  unless t.column_exists?(:uid)
      t.string :authic_data  unless t.column_exists?(:authic_data) 
      
      t.index :email, :unique => true unless t.index_exists?(:email, :unique => true)
      t.index :provider unless t.index_exists?(:provider)
      t.index :uid unless t.index_exists?(:uid)


      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps
    end

  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end