class AddIndexToUrls < ActiveRecord::Migration
  def change
    remove_column :urls, :slug
    add_column :urls, :slug, :string
    add_index :urls, :slug, unique: true
  end
end
