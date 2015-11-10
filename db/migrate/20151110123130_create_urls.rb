class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url, :null => false
      t.string :slug
      t.timestamps null: false
    end
  end
  
  def self.down
    drop_table :urls
  end
end
