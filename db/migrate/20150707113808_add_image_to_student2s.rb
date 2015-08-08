class AddImageToStudent2s < ActiveRecord::Migration
  def change
    add_column :student2s, :image, :string
  end
end
