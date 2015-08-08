class AddProviderToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
  end

  def self.down
    remove_column :users, :provider, :string
    remove_column :users, :uid, :string
    remove_column :users, :name, :string
  end
end
