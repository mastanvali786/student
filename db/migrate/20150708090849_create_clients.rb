class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps null: false
    end
  end
end
